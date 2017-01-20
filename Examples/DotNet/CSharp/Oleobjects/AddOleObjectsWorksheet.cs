using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace OleObjects
{
    class AddOleObjectsWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string fileName = "Sample_Test_Book.xls";
            string sourceFileName = "Sample_Book2.xls";
            string imageFileName = "aspose-logo.png";

            string sheetName = "Sheet1";
            int? upperLeftRow = null;
            int? upperLeftColumn = null;
            int? height = null;
            int? width = null;
            string oleFile = null;
            string imageFile = null;
            string storage = null;
            string folder = null;
            Com.Aspose.Cells.Model.OleObject body = new Com.Aspose.Cells.Model.OleObject();
            body.SourceFullName = sourceFileName;
            body.ImageSourceFullName = imageFileName;
            body.UpperLeftRow = 15;
            body.UpperLeftColumn = 5;
            body.Top = 10;
            body.Bottom = 10;
            body.Left = 10;
            body.Height = 400;
            body.Width = 400;
            body.IsAutoSize = true;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));
                storageApi.PutCreate(sourceFileName, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + sourceFileName));
                storageApi.PutCreate(imageFileName, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + imageFileName));

                // Invoke Aspose.Cells Cloud SDK API to add OleObject
                OleObjectResponse apiResponse = cellsApi.PutWorksheetOleObject(fileName, sheetName, upperLeftRow, upperLeftColumn, height, width, oleFile, imageFile, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Add OleObjects to Excel Worksheet, Done!");
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
