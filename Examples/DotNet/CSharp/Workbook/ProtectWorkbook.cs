using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class ProtectWorkbook
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            CellsProtectParameter cellsProtectParameter = new CellsProtectParameter(CellsProtectionType.All);
            cellsProtectParameter.Password = "Aspose";

            Common.CellsService.Worksheets.ProtectWorksheet(input, "Sheet1", cellsProtectParameter,
                Common.FOLDER, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);

        }
    }
}
