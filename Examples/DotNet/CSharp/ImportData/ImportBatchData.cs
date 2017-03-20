using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace ImportData
{
    class ImportBatchData
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            string name = "Sample_Test_Book.xls";
            string storage = null;
            string folder = null;

            try
            {
                storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes(Common.GetDataDir() + name));
       
                Com.Aspose.Cells.Model.ImportOption body = new Com.Aspose.Cells.Model.ImportOption();
                body.IsInsert = true;                

                Com.Aspose.Cells.Model.SaaSposeResponse apiResponse;
                apiResponse = cellsApi.PostImportData(name, storage, folder, body);              

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Import batch data, Done!");
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
