using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class CreateWorkbookFromSmartMakerTemplate
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book" + new Random().Next(100) + ".xls";            
            String templateFile = "Sample_SmartMarker.xlsx";          
            String dataFile = "Sample_SmartMarker_Data.xml";
            byte[] file = null;

            String storage = null;
            String folder = null;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + templateFile));

                // Upload SmartMarker template data file to aspose cloud storage
                storageApi.PutCreate(dataFile, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + dataFile));

                // Invoke Aspose.Cells Cloud SDK API to create workbook from smartmaker template
                WorkbookResponse apiResponse = cellsApi.PutWorkbookCreate(fileName, templateFile, dataFile, storage, folder, file);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    String outPutFileName = apiResponse.Workbook.FileName;
                    Console.WriteLine("File name:" + outPutFileName);
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
