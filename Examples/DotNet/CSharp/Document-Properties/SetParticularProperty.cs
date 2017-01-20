using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Document_Properties
{
    class SetParticularProperty
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            // Set input file name
            String fileName = "Sample_Book1.xlsx";
            String propertyName = "AsposeAuthor";
            String storage = "";
            String folder = "";
            CellsDocumentProperty body = new CellsDocumentProperty();
            body.Name = "AsposeAuthor";
            body.Value = "Aspose Plugin Developer";
            body.BuiltIn = "false";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to set particular property
                CellsDocumentPropertyResponse apiResponse = cellsApi.PutDocumentProperty(fileName, propertyName, storage, folder, body);

                if (apiResponse != null)
                {
                    Console.WriteLine("New values for the Property have been changed!");
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
