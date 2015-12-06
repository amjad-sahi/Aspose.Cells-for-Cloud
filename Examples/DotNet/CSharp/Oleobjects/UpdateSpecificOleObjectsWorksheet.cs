//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Oleobjects
{
    class UpdateSpecificOleObjectsWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.xlsx";
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            CellsOleObject cellsOleObject = new CellsOleObject();
            cellsOleObject.SourceFullName = "ole.docx";
            cellsOleObject.ImageSourceFullName = "picture.png";
            cellsOleObject.UpperLeftRow = 10;
            cellsOleObject.UpperLeftColumn = 10;
            cellsOleObject.Top = 10;
            cellsOleObject.Left = 20;
            cellsOleObject.Height = 20;
            cellsOleObject.Width = 20;

            Common.CellsService.OleObjects.UpdateOleObject(input, sheetName, 0, cellsOleObject,  Common.FOLDER, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);
        }
    }
}

