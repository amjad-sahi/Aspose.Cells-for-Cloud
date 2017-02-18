﻿using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Text
{
    class ReplaceTextWorksheet
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String fileName = "Sample_Test_Book.xls";
            String sheetName = "Sheet2";
            String oldValue = "aspose";
            String newValue = "aspose.com";
            String storage = null;
            String folder = null;

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to replace text in worksheet
                WorksheetReplaceResponse apiResponse = cellsApi.PostWorsheetTextReplace(fileName, sheetName, oldValue, newValue, storage, folder);

                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Matches: " + apiResponse.Matches);
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
