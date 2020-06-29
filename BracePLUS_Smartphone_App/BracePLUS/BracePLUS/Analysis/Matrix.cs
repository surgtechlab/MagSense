using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;

namespace BracePLUS.Analysis
{
    public class Matrix
    {
        public static double[,] MultiplyMatricies(double[,] A, double[,] B, bool debug = false)
        {
            int Am = A.GetLength(0);    // Get rows of A
            int An = A.GetLength(1);    // Get columns of A

            int Bm = B.GetLength(0);    // Get rows of B
            int Bn = B.GetLength(1);    // Get columns of B

            // New matrix will have same no. rows of A and columns of B
            double[,] C = new double[Am, Bn];

            if (debug)
            {
                Debug.WriteLine("\nMultiplying Matricies.");
                Debug.WriteLine($"Input matrix A, [{Am}:{An}]");
                PrintMatix(A);
                Debug.WriteLine($"Input matrix B, [{Bm}:{Bn}]");
                PrintMatix(B);
                Debug.WriteLine($"Size of C: {C.GetLength(0)} : {C.GetLength(1)}");
            }

            // If rows in A not equal to columns in B, return.
            if (An != Bm)
            {
                Debug.WriteLine("Columns of A and rows of B are not equal, cancelling multiplication operation.");
            }
            else
            {
                /* Matrix multiplication
                [ a11 a12 ] * [ b11 b12 ] = [(a11*b11)+(a12*b21)  (a11*b12)+(a12*b22)]
                [ a21 a22 ]   [ b21 b22 ]   [(a21*b11)+(a22*b21)  (a21*b12)+(a22(b22)]
                */

                // Based off of:
                // c-sharpcorner.com/code/3737/matrix-multiplication-in-c-sharp.aspx
                for (int rowsA = 0; rowsA < Am; rowsA++)
                {
                    for (int colsB = 0; colsB < Bn; colsB++)
                    {
                        C[rowsA, colsB] = 0;

                        for (int colsA = 0; colsA < An; colsA++)
                        {
                            C[rowsA, colsB] += A[rowsA, colsA] * B[colsA, colsB];
                        }
                    }
                }
            }
            if (debug)
            {
                Debug.WriteLine("Result: ");
                PrintMatix(C);
                Debug.WriteLine("");
            }
            return C;
        }

        public static double[,] AddMatricies(double[,] A, double[,] B, bool debug = false)
        {
            int Am = A.GetLength(0);    // Get rows of A
            int An = A.GetLength(1);    // Get columns of A

            int Bm = B.GetLength(0);    // Get rows of B
            int Bn = B.GetLength(1);    // Get columns of B

            // New matrix will have same no. rows of A and columns of B
            double[,] C = new double[Am, Bn];

            if (debug)
            {
                Debug.WriteLine("Adding matricies:");
                Debug.WriteLine($"Input matrix A, [{Am}:{An}]");
                PrintMatix(A);
                Debug.WriteLine($"Input matrix B, [{Bm}:{Bn}]");
                PrintMatix(B);
            }

            if (Am != Bm || An != Bn)
            {
                Debug.WriteLine("Matricies dimensions unequal, cancelling addition operation.");
            }
            else
            {
                for (int i = 0; i < Am; i++)
                {
                    for (int j = 0; j < An; j++)
                    {
                        C[i, j] = A[i, j] + B[i, j];
                    }
                }

                if (debug)
                {
                    Debug.WriteLine("Result:");
                    PrintMatix(C);
                }
            }


            return C;
        }

        public static void PrintMatix(double[,] matrix)
        {
            for (int i = 0; i < matrix.GetLength(0); i++)
            {
                for (int j = 0; j < matrix.GetLength(1); j++)
                {
                    Debug.Write("\t" + matrix[i, j]);
                }
                Debug.WriteLine("");
            }
        }

        public static double[,] Transpose(double[,] A)
        {
            var rows = A.GetLength(0);
            var cols = A.GetLength(1);

            double[,] T = new double[cols, rows];

            for (int r = 0; r < rows; r++)
            {
                for (int c = 0; c < cols; c++)
                {
                    T[c, r] = A[r, c];
                }
            }

            return T;
        }
    }
}
