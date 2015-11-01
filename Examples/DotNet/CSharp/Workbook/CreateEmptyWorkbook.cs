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
    class CreateEmptyWorkbook
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            //string input = "sample1.tiff";
            string output = "output.xlsx";

            //Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            WorkbookResponse apiResponse = 
                Common.CellsService.Workbook.CreateNewWorkbookUsingDeferentMethods(output, 
                string.Empty, string.Empty, Common.FOLDER, storage: Common.STORAGE);
            /*            Common.GetImagingSdk().Frame.UpdatePropertiesOfFrameInExistingTiffImage(input, frameId,
                            newWidth, newHeight, x, y, rectWidth, rectHeight, true, outPath,
                            Common.FOLDER, storage: Common.STORAGE);
                        Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
            */
            Common.StorageService.File.DownloadFile(output, dataDir + output, storage: Common.STORAGE);
        }
    }
}
