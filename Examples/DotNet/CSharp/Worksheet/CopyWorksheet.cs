using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class CopyWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";
            string copySheet = "Sheet2";
            string sourceSheet = "Sheet1";
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            Common.CellsService.Worksheets.CopyWorksheet(input, copySheet, sourceSheet, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);

        }
    }
}

