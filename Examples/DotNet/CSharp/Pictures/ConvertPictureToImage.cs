﻿using System;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;
using Com.Aspose.Storage.Api;

namespace Pictures
{
    class ConvertPictureToImage
    {
        public static void Run()
        {
            // ExStart:1
            CellsApi cellsApi = new CellsApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);
            StorageApi storageApi = new StorageApi(Common.APP_KEY, Common.APP_SID, Common.BASEPATH);

            String name = "Sample_Test_Book";
            String fileName = name + ".xls";
            String sheetName = "Sheet6";
            int pictureNumber = 0;
            String format = "png";
            String storage = "";
            String folder = "";

            try
            {
                // Upload source file to aspose cloud storage
                storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes(Common.GetDataDir() + fileName));

                // Invoke Aspose.Cells Cloud SDK API to convert picture to image
                ResponseMessage apiResponse = cellsApi.GetWorksheetPictureWithFormat(fileName, sheetName, pictureNumber, format, storage, folder);

                if (apiResponse != null)
                {
                    Console.WriteLine("Convert Picture to Image, Done!");
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
