using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Worksheet
{
    class UpdateWorksheetProperties
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet1";
            String folder = "";
            String storage = "";

            Com.Aspose.Cells.Model.Worksheet body = new Com.Aspose.Cells.Model.Worksheet();
            body.Type = "Worksheet";
            body.Name = "Sheet1";
            body.IsGridlinesVisible = true;
            body.IsPageBreakPreview = true;
            body.IsRulerVisible = true;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to update worksheet properties
                WorksheetResponse apiResponse = cellsApi.PostUpdateWorksheetProperty(fileName, sheetName, folder, storage, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Update Excel Worksheet Properties!");
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
