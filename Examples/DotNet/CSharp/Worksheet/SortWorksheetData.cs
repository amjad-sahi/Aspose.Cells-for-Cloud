using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;
using System.Collections.Generic;

namespace Worksheet
{
    class SortWorksheetData
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet1";
            String cellArea = "A5:A10";
            String storage = "";
            String folder = "";

            SortKey sort = new SortKey();
            sort.Key = 0;
            sort.SortOrder = "descending";

            DataSorter body = new DataSorter();
            body.CaseSensitive = "false";
            body.HasHeaders = "false";
            body.SortLeftToRight = "false";
            body.KeyList = new List<SortKey> { sort };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to sort worksheet data
                SaaSposeResponse apiResponse = cellsApi.PostWorksheetRangeSort(fileName, sheetName, cellArea, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Worksheet data is sorted!");
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
