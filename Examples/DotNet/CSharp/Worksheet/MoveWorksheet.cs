using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class MoveWorksheet
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";
            CellsMoveWorksheetRequest cellsMoveWorksheetRequest = new CellsMoveWorksheetRequest();
            cellsMoveWorksheetRequest.DestinationWorksheet = "sheet3";
            cellsMoveWorksheetRequest.Position = 3;

            Common.CellsService.Worksheets.MoveWorksheet(input, sheetName, cellsMoveWorksheetRequest, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);

        }
    }
}

