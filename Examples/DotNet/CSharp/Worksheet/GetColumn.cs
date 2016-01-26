using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class GetColumn
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string sheetName = "Sheet1";
            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            WorksheetColumnResponse apiResponse = Common.CellsService.WorksheetColumns.ReadWorksheetColumnDataByColumnIndex(input, sheetName, 0, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Response: " + apiResponse.Column.IsHidden.ToString());
        }
    }
}

