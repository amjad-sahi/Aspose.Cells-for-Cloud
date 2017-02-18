using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class CreateEmptyWorkbook
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);            

            String fileName = "Sample_Test_Book" + new Random().Next(100) + ".xls";            
            String templateFile = null;            
            String dataFile = null;
            byte[] file = null;
            String storage = null;
            String folder = null;

            try
            {
                // Invoke Aspose.Words Cloud SDK API to create excel empty workbook
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
