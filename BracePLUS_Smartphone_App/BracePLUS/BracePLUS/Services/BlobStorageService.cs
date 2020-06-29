using BracePLUS.Models;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

using static BracePLUS.Extensions.Constants;

namespace BracePLUS.Services
{
    class BlobStorageService
    {
        readonly static CloudStorageAccount cloudStorageAccount = CloudStorageAccount.Parse(STORAGE_ACCOUNT_KEY1);
        readonly static CloudBlobClient cloudBlobClient = cloudStorageAccount.CreateCloudBlobClient();

        static public async Task<List<T>> GetBlobs<T>(string containerName, string prefix = "", int? maxresultsPerQuery = null, BlobListingDetails blobListingDetails = BlobListingDetails.None) where T : ICloudBlob
        {
            // Retrieve reference to container
            var blobContainer = cloudBlobClient.GetContainerReference(containerName);

            var blobList = new List<T>();

            BlobContinuationToken continuationToken = null;

            try
            {
                do
                {
                    var response = await blobContainer.ListBlobsSegmentedAsync(prefix, true, blobListingDetails, maxresultsPerQuery, continuationToken, null, null);

                    continuationToken = response?.ContinuationToken;

                    foreach (var blob in response?.Results?.OfType<T>())
                    {
                        blobList.Add(blob);
                    }

                } while (continuationToken != null);
            }
            catch (Exception ex)
            {
                // Handle exception
                Debug.WriteLine("Blob download failed with exception: " + ex.Message);
            }

            return blobList;
        }

        public static async Task<byte[]> SaveBlockBlob(string containerName, byte[] blob, string blobTitle)
        {
            try
            {
                var blobContainer = cloudBlobClient.GetContainerReference(containerName);
                var blockBlob = blobContainer.GetBlockBlobReference(blobTitle);

                // Mask first byte to indicate cloud storage.
                blob[0] |= 0x10;

                await blockBlob.UploadFromByteArrayAsync(blob, 0, blob.Length);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Unable to save {blobTitle} to cloud storage: {ex.Message}");
            }

            App.DebugMsg($"Saved {blobTitle} to cloud storage.");

            return blob;
        }

        public static async Task<bool> DeleteBlob(string blobName, string containerName)
        {
            bool result;

            try
            {
                var blobContainer = cloudBlobClient.GetContainerReference(containerName);

                var blob = blobContainer.GetBlockBlobReference(blobName);
                result = await blob.DeleteIfExistsAsync();

                if (result) App.DebugMsg($"Deleted {blobName} from cloud storage.");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Couldn't delete {blobName}: {ex.Message}");
                result = false;
            }

            return result;
        }

        public static async Task DownloadBlobData(CloudBlockBlob blob)
        {
            var info = blob.Properties;
            var packets = (info.Length - 6) / 128;

            var bytes = new byte[128];
            var data = new List<byte[]>();

            for (int packet = 0; packet < packets; packet++)
            {
                try
                {
                    await blob.DownloadRangeToByteArrayAsync(bytes, 0, packet * 128, 128);
                    data.Add(bytes);
                    bytes = new byte[128];
                }
                catch (Exception ex)
                {
                    Debug.WriteLine("Download failed: " + ex.Message);
                    return;
                }
            }

            App.DebugMsg($"Downloaded data successfully for {blob.Name}");

            // Mask first byte to indicate cloud storage.
            data[0][0] |= 0x1F;

            FileManager.WriteFile(data, blob.Name);
        }

    }
}
