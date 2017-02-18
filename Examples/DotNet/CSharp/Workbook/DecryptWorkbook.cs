using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class DecryptWorkbook
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String filePrefix = "encrypted_";
            String fileName = filePrefix + "Sample_Test_Book.xls";
            String storage = "";
            String folder = "";
            WorkbookEncryptionRequest body = new WorkbookEncryptionRequest();
            body.EncryptionType = "XOR";
            body.Password = "aspose";
            body.KeyLength = 128;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to decrypt workbook
                SaaSposeResponse apiResponse = cellsApi.DeleteDecryptDocument(fileName, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("File is Decrypted");
                    Console.ReadKey();
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
            }
            // ExEnd:1
        }
    }
}
