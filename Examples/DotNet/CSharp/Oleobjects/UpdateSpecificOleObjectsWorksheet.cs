using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace OleObjects
{
    class UpdateSpecificOleObjectsWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Embeded_OleObject_Sample_Book1.xlsx";
            string sheetName = "Sheet1";
            int? oleObjectIndex = 0;
            string storage = null;
            string folder = null;

            string sourceFileName = "Sample_Book2.xls";
            string imageFileName = "aspose-logo.png";

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

                // Invoke Aspose.Cells Cloud SDK API to update specific OleObject
                SaaSposeResponse apiResponse = cellsApi.PostUpdateWorksheetOleObject(fileName, sheetName, oleObjectIndex, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Update a specific OleObject from Excel Worksheet, Done!");
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
