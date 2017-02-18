using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Worksheet
{
    class ConvertWorksheetToImage
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book";
            String fileExtension = ".xls";
            String sheetName = "Sheet1";
            String format = "png";
            int? verticalResolution = null;
            int? horizontalResolution = null;
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName + fileExtension));

                // Invoke Aspose.Cells Cloud SDK API to convert worksheet to image
                ResponseMessage apiResponse = cellsApi.GetWorkSheetWithFormat(fileName + fileExtension, sheetName, format, verticalResolution, horizontalResolution, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("Worksheet converted to Image!");
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
