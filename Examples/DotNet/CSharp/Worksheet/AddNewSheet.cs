using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Worksheet
{
    class AddNewSheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet2-new";
            String storage = "";
            String folder = "";

            try
            {
                // Invoke Aspose.Cells Cloud SDK API to add new excel sheet
                WorksheetsResponse apiResponse = cellsApi.PutAddNewWorksheet(fileName, sheetName, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("Added a New Excel Worksheet!");
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
