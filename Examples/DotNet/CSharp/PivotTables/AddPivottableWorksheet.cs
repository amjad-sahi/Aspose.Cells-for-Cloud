using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace PivotTables
{
    class GetOleObjectWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            string sheetName = "Sheet1";
            string storage = null;
            string folder = null;
            string sourceData = null;
            string destCellName = null;
            string tableName = null;
            bool? useSameSource = false;
            Com.Aspose.Cells.Model.CreatePivotTableRequest body = new Com.Aspose.Cells.Model.CreatePivotTableRequest();
            body.Name = "MyPivot";
            body.SourceData = "A5:E10";
            body.DestCellName = "H20";
            body.UseSameSource = true;
            body.PivotFieldRows = new System.Collections.Generic.List<int?> { 1 };
            body.PivotFieldColumns = new System.Collections.Generic.List<int?> { 1 };
            body.PivotFieldData = new System.Collections.Generic.List<int?> { 1 };

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to add pivot table worksheet
                PivotTableResponse apiResponse = cellsApi.PutWorksheetPivotTable(fileName, sheetName, storage, folder, sourceData, destCellName, tableName, useSameSource, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Add a Pivot Table in a Worksheet, Done!");
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
