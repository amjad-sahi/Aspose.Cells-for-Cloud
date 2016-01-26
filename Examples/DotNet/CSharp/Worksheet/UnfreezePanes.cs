using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class UnfreezePanes
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";
            string sheetName = "Sheet1";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            int row = 1;
            int column = 1;
            int freezedRows = 1;
            int freezedColumns = 1;

            Common.CellsService.Worksheets.UnfreezePanes(input, sheetName, row, column, freezedRows, freezedColumns, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);

        }
    }
}

