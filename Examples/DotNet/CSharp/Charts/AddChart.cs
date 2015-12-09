//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Charts
{
    class AddChart
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.xlsx";
            string sheetName = "Sheet1";
            string outPath = "cellsOut/";

            Common.StorageService.File.UploadFile(dataDir + input, outPath + input, storage: Common.STORAGE);

            Common.CellsService.Charts.AddNewChartToWorksheet(input, sheetName, ChartType.Bar, 1, 1, 1, 1, "A1:B3", true, "", true, "Aspose.Cells for .NET", outPath, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(outPath + input, dataDir + output, storage: Common.STORAGE);

        }
    }
}

