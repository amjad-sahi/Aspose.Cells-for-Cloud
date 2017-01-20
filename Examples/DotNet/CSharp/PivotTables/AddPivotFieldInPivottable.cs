using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace PivotTables
{
    class AddPivotFieldInPivotTable
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Pivot_Table_Example.xls";
            String sheetName = "Sheet2";
            int pivotTableIndex = 0;
            String pivotFieldType = "Row";

            Com.Aspose.Cells.Model.PivotTableFieldRequest body = new Com.Aspose.Cells.Model.PivotTableFieldRequest();
            body.Data = new System.Collections.Generic.List<int?> { 1, 2 };

            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to add pivot field in pivot table
                SaaSposeResponse apiResponse = cellsApi.PutPivotTableField(fileName, sheetName, pivotTableIndex, pivotFieldType, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Add Pivot Field into Pivot Table, Done!");
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
