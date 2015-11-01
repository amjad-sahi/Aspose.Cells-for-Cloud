//////////////////////////////////////////////////////////////////////////
// Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
//
// This file is part of Aspose.Imaging. The source code in this file
// is only intended as a supplement to the documentation, and is provided
// "as is", without warranty of any kind, either expressed or implied.
//////////////////////////////////////////////////////////////////////////

using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class ConvertToAnotherFormat
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "originalFormat.xlsx";
            string output = "output.pdf";
            string outPath = "cellsOut/";
            
           // Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            
            Common.CellsService.Workbook.ConvertWorkbookToSomeFormat(WorkbookExportFormat.Pdf, string.Empty, outPath+output, dataDir+input);
            
            //Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(outPath+output, dataDir+output);
        }
    }
}
