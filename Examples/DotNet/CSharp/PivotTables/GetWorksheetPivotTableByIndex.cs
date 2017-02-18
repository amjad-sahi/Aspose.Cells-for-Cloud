using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace PivotTables
{
    class GetWorksheetPivotTableByIndex
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Pivot_Table_Example.xls";
            String sheetName = "Sheet2";
            int pivottableIndex = 0;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to get worksheet pivot table informations by index
                PivotTableResponse apiResponse = cellsApi.GetWorksheetPivotTable(fileName, sheetName, pivottableIndex, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    PivotTable pivotTable = apiResponse.PivotTable;
                    Console.WriteLine("Name" + pivotTable.Name);
                    foreach (PivotItem item in pivotTable.BaseFields[0].PivotItems)
                    {
                        Console.WriteLine("Pivot Item Name :: " + item.Name);
                        Console.WriteLine("Pivot Item Value :: " + item.Value);
                    }
                    Console.WriteLine("Delete Row from a Worksheet, Done!");
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
