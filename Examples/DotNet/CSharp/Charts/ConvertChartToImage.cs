using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Charts
{
    class ConvertChartToImage
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String name = "Sample_Test_Book";
            String fileName = name + ".xls";
            String sheetName = "Sheet5";
            int chartNumber = 0;
            String format = "png";
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to convert chart to image
                ResponseMessage apiResponse = cellsApi.GetWorksheetChartWithFormat(fileName, sheetName, chartNumber, format, storage, folder);


                if (apiResponse != null)
                {
                    Console.WriteLine("Convert Chart to Image, done!");
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
