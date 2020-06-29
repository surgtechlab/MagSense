using BracePLUS.Analysis;
using System;

namespace BracePLUS.Models
{
    class NeuralNetCalib
    {
        public static double[,] CalibratePacket(byte[] buf)
        {
            var Outputs = new double[16, 3];
            bool skip = false;

            // Cycle through each node (bunch of 6 values - 2bytes*3 axis) in buffer 
            for (int i = 4; i < 100; i += 6)
            {
                // Check for null values
                if (buf[i] == 0xFF && 
                    buf[i + 1] == 0xFF &&
                    buf[i + 2] == 0xFF &&
                    buf[i + 3] == 0xFF &&
                    buf[i + 4] == 0xFF &&
                    buf[i + 5] == 0xFF)
                {
                    skip = true;
                }
                
                // if not null, proceed with calib
                if (!skip)
                {
                    // Create new array to hold raw single node data
                    var raw = new short[3]
                    {
                        (short)(buf[i] * 256 + buf[i + 1]),
                        (short)(buf[i + 2] * 256 + buf[i + 3]),
                        (short)(buf[i + 4] * 256 + buf[i + 5])
                    };

                    // Create milliTelsa values
                    var Bxyz = new double[3]
                    {
                        raw[0] * 0.751,
                        raw[1] * 0.751,
                        raw[2] * 1.210
                    };

                    // Convert to Gauss
                    for (int j = 0; j < 3; j++)
                        Bxyz[j] *= 0.01;

                    var InOut = GetInputs(Bxyz);
                    var L1Out = CalculateLayer1(InOut);
                    var L2Out = CalculateLayer2(L1Out);
                    var dOutput = CalculateOutput(L2Out);

                    /*
                    Debug.WriteLine("NN Calib Inputs:");
                    foreach (var input in InOut)
                        Debug.WriteLine(input);

                    Debug.WriteLine("NN Calib Outputs:");
                    foreach (var output in dOutput)
                        Debug.WriteLine(output);
                    */

                    dOutput[2] *= -1.00;

                    // Re-pack back into output buffer with correct index
                    for (int j = 0; j < 3; j++)
                        Outputs[(i - 4) / 6, j] = dOutput[j];
                }
                skip = false;
            }

            return Outputs;
        }

        public static double[,] GetInputs(double[] Bxyz)
        {
            double[,] InOut = new double[1,3];

            InOut[0,0] = (Bxyz[0] - InputLayer[xoffset, 0]) * InputLayer[xgain, 0] -1;
            InOut[0,1] = (Bxyz[1] - InputLayer[xoffset, 1]) * InputLayer[xgain, 1] -1;
            InOut[0,2] = (Bxyz[2] - InputLayer[xoffset, 2]) * InputLayer[xgain, 2] -1;

            return InOut;
        }

        public static double[,] CalculateLayer1(double[,] inOut)
        {
            // 15*3 x 3*1 matricies multiplication.
            double[,] L1Out1 = Matrix.MultiplyMatricies(Layer1W, Matrix.Transpose(inOut));

            // Create temp 1*15 matrix from a [15] array
            double[,] _layer1b = new double[1, 15];
            for (int i = 0; i < 15; i++)
            {
                _layer1b[0, i] = Layer1B[i];
            }

            // 15*1 + 1*15 addition
            L1Out1 = Matrix.AddMatricies(L1Out1, Matrix.Transpose(_layer1b));

            var L1Out2 = L1Out1;
            
            // Perform hyperbolic tangeant transfer 
            for (int i = 0; i < 15; i++)
            {
                var x = L1Out1[i, 0];
                L1Out2[i, 0] = 2 / (1 + Math.Pow(2.718281828459045, -2*x)) - 1;
            }

            return L1Out2;
        }

        public static double[,] CalculateLayer2(double[,] L1Out2)
        {
            // 1*15 x 15*3 matrix multiplication (need to transpose weight layer) 
            double[,] L2Out1 = Matrix.MultiplyMatricies(Layer2W, L1Out2);

            // Create temp 1*3 matrix from a [3] array
            double[,] _layer2b = new double[1, 3];
            for (int i = 0; i < 3; i++)
                _layer2b[0, i] = Layer2B[i];

            L2Out1 = Matrix.AddMatricies(_layer2b, Matrix.Transpose(L2Out1));

            return L2Out1;
        }

        public static double[] CalculateOutput(double[,] L2Out)
        {
            double[] outputs = new double[3];
            double[] offsetResult = new double[3];

            for (int i = 0; i < 3; i++)
                offsetResult[i] = (L2Out[0, i]+1) / OutputLayerOffsets[i];

            for (int i = 0; i < 3; i++)
                outputs[i] = offsetResult[i] + OutputLayerGains[i];

            //outputs[2] *= -1.00;

            return outputs;
        }

        #region Definitions
        private const int xoffset = 0;
        private const int xgain = 1;

        private static readonly double[,] InputLayer = new double[2, 3] 
        { 
            { -69.29477, -72.85451, 11.3982 }, 
            { 0.0119954769854479, 0.0118703625831927, 0.0113804224868044} 
        };

        private static readonly double[] Layer1B = new double[15] { -1.19852245920524, -9.96241297556204, 1.86232833302962, -3.74295174342732, 0.5997341991763511, 1.8481645341635, -0.482835535629696, 0.547577900819219, 0.442127493587756, 4.12982059194244, -12.1010391897277, 1.76163041437193, 1.74779213901048, 0.429827772151101, 1.22015586486954 };
        private static readonly double[,] Layer1W = new double[15, 3]
        {
            { -0.234517259397754, 1.14180854368351, 0.698846377430546 },
            { 12.537367609208, -0.0506074587867194, -10.1365050038909 },
            { -7.05930640231967, 0.744612884992583, 1.0892438157013 },
            { 0.301962334551554, 0.209098234545621, -2.43276934394472 },
            { -0.165660136057391, 2.83442122157214, 0.109186546131289 },
            { -7.02152873942503, 0.741937947763848, 1.1017211871195 },
            { 0.179484789224373, -2.56282693689308, -0.518958347626254 },
            { -0.169871224458293, 2.68649120784558, 0.264613126259896 },
            { -0.193702158354608, 2.56863365329368, 0.798885168562838 },
            { 11.6367820052421, -2.5099131362798, 3.872443218647 },
            { -10.6714326394261, 0.981346807962748, -12.261274618356 },
            { 4.01231571170453, 3.38605786156568, 1.04953781875732 },
            { 3.98463892111665, 3.3651839748639, 1.05915697906032 },
            { -0.206542474867045, 2.6363462878513, 0.997033580763766 },
            { 0.230524168700952, -1.20833762165769, -0.690159221734512 }
        };


        private static readonly double[] Layer2B = new double[3] { -0.127731076874756, -0.965365959058801, 2.99791341621149 };
        private static readonly double[,] Layer2W = new double[3,15]
        {
            { -2.27385707309393, 0.199269391060097, 20.1869791999454, -0.2007164429185, -2.06845426069358, -20.4446910432594, 17.137525058428, 8.68859568980856, 18.3341917604718, 0.177150303799457, -0.154853830933013, -15.1718689359415, 15.3223132382385, -7.86583782652861, -2.25010569377694 },
            { 10.8397545291705, -0.0007476248905548, 1.59897158743284, -1.52568270024838, -95.7616248365735, -1.62720199343827, 326.003074204251, 259.957117444199, 252.141497867686, 0.0457527024243168, -0.00512667306470321, 14.4018064214123, -14.55860909601, -91.1679982558093, 10.2269608371627 },
            { 5.2896809892871, -0.166010112445814, -1.20955835253399, 4.44292660113533, -23.3910684676111, 1.33499349726821, 3.71785995768396, 40.3541802828751, -33.1028376453719, 0.0601800099573173, -0.192417457165351, 2.57784364796324, -2.42359778139881, 19.8892291688693, 5.45402275214104}
        };

        private static readonly double[] OutputLayerGains = new double[3] { -2.702278, -2.487504, -0.154686 };                            // Gains
        private static readonly double[] OutputLayerOffsets = new double[3] { 0.381788534203099, 0.396175951248172, 0.501947052617102 };   // Offsets
        #endregion
    }
}