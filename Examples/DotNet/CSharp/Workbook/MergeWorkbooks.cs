using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Workbook
{
    class MergeWorkbooks
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Book1.xlsx";
            String mergeWith = "Sample_Book2.xls";
            String storage = "";
            String folder = "";

            try
            {

                // Upload file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Upload merge file to aspose cloud storage
                storageApi.PutCreate(mergeWith, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + mergeWith));

                // Invoke Aspose.Cells Cloud SDK API to merge excel workbooks
                WorkbookResponse apiResponse = cellsApi.PostWorkbooksMerge(fileName, mergeWith, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    String destFileName = apiResponse.Workbook.FileName;
                    Console.WriteLine("File name:" + destFileName);
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
