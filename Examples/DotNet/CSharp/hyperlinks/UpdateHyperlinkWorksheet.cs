using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Hyperlinks
{
    class UpdateHyperlinkWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet2";
            int hyperlinkIndex = 0;
            String storage = "";
            String folder = "";

            Hyperlink body = new Hyperlink();
            body.Address = "http://www.aspose.com/cloud/total-api.aspx";
            body.TextToDisplay = "Aspose Cloud APIs";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to update hyperlinks
                HyperlinkResponse apiResponse = cellsApi.PostWorkSheetHyperlink(fileName, sheetName, hyperlinkIndex, storage, folder, body);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Hyperlink Address : " + apiResponse.Hyperlink.Address);
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
