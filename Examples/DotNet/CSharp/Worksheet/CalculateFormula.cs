using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class CalculateFormula
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            CellsForumulaValueResponse apiRespons = Common.CellsService.Worksheets.CalculateFormulaValue(input, sheetName, "A5*A6", Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Formula Response : "+ apiRespons.Value.Value);
            
        }
    }
}

