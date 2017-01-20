using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace OleObjects
{
    class GetOleObjectWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_OleObject_Book1.xlsx";
            String sheetName = "Sheet1";
            int objectNumber = 0;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to get OleObject from worksheet
                ResponseMessage apiResponse = cellsApi.GetWorksheetOleObject(fileName, sheetName, objectNumber, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("OleObject" + System.Text.Encoding.Default.GetString(apiResponse.ResponseStream));
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
