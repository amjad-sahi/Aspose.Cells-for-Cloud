//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Pictures
{
    class AddPicturesWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string pic = "picture.png";
            string output = "output.xlsx";
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            Common.StorageService.File.UploadFile(dataDir + pic, pic, storage: Common.STORAGE);

            string sheetName = "Sheet1";


            CellsPicturesResponse CellsPicturesResponse = Common.CellsService.Pictures.ReadWorksheetPictures(input, sheetName, Common.FOLDER, storage: Common.STORAGE);

            CellsPicture cellsPicture = new CellsPicture();
            cellsPicture.AlternativeText = "Aspose";
            cellsPicture.BorderLineColor = new Color(5, 5, 5, 5);
            cellsPicture.BorderWeight = 2;
            cellsPicture.Height = 100;
            cellsPicture.Width = 100;
            cellsPicture.SourceFullName = "picture.png";

            Common.CellsService.Pictures.AddANewWorksheetPicture(input, sheetName, 1, 1, 5, 5, "picture.png", cellsPicture, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
        }
    }
}

