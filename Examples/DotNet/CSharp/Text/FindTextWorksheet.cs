//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Text
{
    class FindTextWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string text = "aspose";
            string sheetName = "Sheet1";
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            CellsTextItemsResponse apiResponse = Common.CellsService.Worksheets.SearchText(input, sheetName, text, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Response Type: " + apiResponse.TextItems.GetType().ToString());
        }
    }
}

