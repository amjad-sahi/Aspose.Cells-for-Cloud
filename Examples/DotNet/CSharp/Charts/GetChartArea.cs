using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Charts
{
    class GetChartArea
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet5";
            int chartIndex = 0;
            String storage = "";
            String folder = "";
            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to get chart area
                ChartAreaResponse apiResponse = cellsApi.GetChartArea(fileName, sheetName, chartIndex, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    ChartArea chartArea = apiResponse.ChartArea;
                    Console.WriteLine("ChatArea X :: " + chartArea.X);
                    Console.WriteLine("ChatArea Y :: " + chartArea.Y);
                    Console.WriteLine("ChatArea Area :: " + chartArea.Area);
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
