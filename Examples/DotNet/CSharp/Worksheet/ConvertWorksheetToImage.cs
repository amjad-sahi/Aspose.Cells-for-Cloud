using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class ConvertWorksheetToImage
        {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.png";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            Common.CellsService.Worksheets.ExportWorksheet(input, sheetName, WorksheetExportFormat.Png, 0, 0, Common.FOLDER, dataDir+output, storage: Common.STORAGE);
            
        }
    }
}

