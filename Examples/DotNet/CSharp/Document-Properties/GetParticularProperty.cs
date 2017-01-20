﻿using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Document_Properties
{
    class GetParticularProperty
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Book1.xlsx";
            String propertyName = "Author";
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to get particular property
                CellsDocumentPropertyResponse apiResponse = cellsApi.GetDocumentProperty(fileName, propertyName, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {

                    CellsDocumentProperty docProperty = apiResponse.DocumentProperty;
                    Console.WriteLine("Name: " + docProperty.Name);
                    Console.WriteLine("Value: " + docProperty.Value);
                    Console.WriteLine("BuiltIn: " + docProperty.BuiltIn);
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
