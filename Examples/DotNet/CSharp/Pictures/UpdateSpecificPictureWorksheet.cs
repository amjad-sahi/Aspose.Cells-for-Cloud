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
    class UpdateSpecificPictureWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.xlsx";
            string pic = "picture.png";
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            Common.StorageService.File.UploadFile(dataDir + pic, pic, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            CellsPicturesResponse CellsPicturesResponse = Common.CellsService.Pictures.ReadWorksheetPictures(input, sheetName, Common.FOLDER, storage: Common.STORAGE);
            
            CellsPicture cellsPicture2 = new CellsPicture();
            cellsPicture2.BorderLineColor = new Color(5, 5, 5, 5);
            cellsPicture2.BorderWeight = 2;
            cellsPicture2.OriginalHeight = 100;
            cellsPicture2.OriginalWidth = 5;
            cellsPicture2.ImageFormat = "Png";
            cellsPicture2.SourceFullName = pic;
            cellsPicture2.Name = "Aspose";
            cellsPicture2.MsoDrawingType = string.Empty;
            cellsPicture2.AutoShapeType = string.Empty;
            cellsPicture2.Placement = string.Empty;
            cellsPicture2.UpperLeftRow = 100;
            cellsPicture2.Top = 100;
            cellsPicture2.UpperLeftColumn = 100;
            cellsPicture2.Left = 100;
            cellsPicture2.LowerRightRow = 100;
            cellsPicture2.Bottom = 100;
            cellsPicture2.LowerRightColumn = 100;
            cellsPicture2.Right = 100;
            cellsPicture2.Width = 100;
            cellsPicture2.Height = 100;
            cellsPicture2.X = 100;
            cellsPicture2.Y = 100;
            cellsPicture2.RotationAngle = 190;
            cellsPicture2.HtmlText = string.Empty;
            cellsPicture2.Text = string.Empty;
            cellsPicture2.AlternativeText = string.Empty;
            cellsPicture2.TextHorizontalAlignment = string.Empty;
            cellsPicture2.TextHorizontalOverflow = string.Empty;
            cellsPicture2.TextOrientationType = string.Empty;
            cellsPicture2.TextVerticalAlignment = string.Empty;
            cellsPicture2.TextVerticalOverflow = string.Empty;
            cellsPicture2.IsGroup = false;
            cellsPicture2.IsHidden = false;
            cellsPicture2.IsLockAspectRatio = false;
            cellsPicture2.IsLocked = false;
            cellsPicture2.IsPrintable = false;
            cellsPicture2.IsTextWrapped = false;
            cellsPicture2.IsWordArt = false;
            cellsPicture2.LinkedCell = string.Empty;
            cellsPicture2.ZOrderPosition = 0;
            
            Common.CellsService.Pictures.UpdateWorksheetPictureByIndex(input, sheetName, 0, Common.FOLDER, cellsPicture2, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
        }
    }
}

