using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class ConvertWorkbookToAnotherFormatWithoutStorage
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book";
            String inputfileName = fileName + ".xls";
            String format = "pdf";
            String password = "";
            String outPath = "";
            String outputFileName = fileName + "." + format;

            byte[] file = System.IO.File.ReadAllBytes(Common.GetDataDir() + inputfileName);

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(inputfileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + inputfileName));

                // Invoke Aspose.Cells Cloud SDK API to convert excel workbook to different format without storage
                ResponseMessage apiResponse = cellsApi.PutConvertWorkBook(format, password, outPath, file);

                if (apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("File Converted successfully to:" + outputFileName);
                    Console.ReadKey();
                }
                else
                {
                    Console.WriteLine("status:" + apiResponse.Status);
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
