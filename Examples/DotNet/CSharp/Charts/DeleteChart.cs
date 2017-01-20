﻿using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Charts
{
    class DeleteChart
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

                // Invoke Aspose.Cells Cloud SDK API to delete chart from worksheet
                ChartsResponse apiResponse = cellsApi.DeleteWorksheetDeleteChart(fileName, sheetName, chartIndex, storage, folder);


                if (apiResponse != null && apiResponse.Status.Equals("OK"))
                {
                    Console.WriteLine("Delete a Chart from a Worksheet, Done!");
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
