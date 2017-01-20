using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Pictures
{
    class AddPicturesWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            string sheetName = "Sheet6";
            int? upperLeftRow = 5;
            int? upperLeftColumn = 5;
            int? lowerRightRow = 10;
            int? lowerRightColumn = 10;
            string picturePath = "aspose-cloud.png";
            string storage = null;
            string folder = null;
            byte[] file = null;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(picturePath, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + picturePath));

                // Invoke Aspose.Cells Cloud SDK API to add picture to worksheet
                PicturesResponse apiResponse = cellsApi.PutWorksheetAddPicture(fileName, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, picturePath, storage, folder, file);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Add Pictures to Excel Worksheet, Done!");
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
