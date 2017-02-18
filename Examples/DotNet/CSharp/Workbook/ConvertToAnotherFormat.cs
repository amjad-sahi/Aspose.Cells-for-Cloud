using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class ConvertToAnotherFormat
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book";
            String inputfileName = fileName + ".xls";
            String format = "pdf";
            String outputFileName = fileName + "." + format;
            Boolean isAutoFitRows = false;
            Boolean isAutoFitColumns = false;
            String storage = "";
            String folder = "";
            SaveOptions body = new SaveOptions();

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(inputfileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + inputfileName));

                // Invoke Aspose.Cells Cloud SDK API to convert excel workbook to different format
                SaveResponse apiResponse = cellsApi.PostDocumentSaveAs(inputfileName, outputFileName, isAutoFitRows, isAutoFitColumns, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    string destFileName = apiResponse.SaveResult.DestDocument.Href;
                    Console.WriteLine("File name:" + destFileName);
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
