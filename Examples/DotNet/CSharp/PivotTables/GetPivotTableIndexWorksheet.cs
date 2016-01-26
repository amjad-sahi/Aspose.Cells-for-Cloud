//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.PivotTables
{
    class GetPivotTableIndexWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            string sheetName = "Sheet1";

            PivotTableResponse apiResponse = Common.CellsService.PivotTable.GetWorksheetPivottableInfoByIndex(input, sheetName, 0, Common.FOLDER, storage: Common.STORAGE);

           Console.WriteLine(" Output " + apiResponse.PivotTable.link.Title);
        }
    }
}

