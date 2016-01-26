using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Rows
{
    class GetRowFromWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            WorksheetRowResponse apiResponse = Common.CellsService.WorksheetColumns.ReadWorksheetRowDataByRowIndex(input, sheetName, 0, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Row: " + apiResponse.Row.link.ToString());

        }
    }
}

