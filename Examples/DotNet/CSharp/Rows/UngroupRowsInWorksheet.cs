using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Rows
{
    class UngroupRowsInWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.xlsx";
                                    
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            Common.CellsService.WorksheetColumns.UngroupWorksheetRows(input, sheetName, 1, 4, true, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);

        }
    }
}

