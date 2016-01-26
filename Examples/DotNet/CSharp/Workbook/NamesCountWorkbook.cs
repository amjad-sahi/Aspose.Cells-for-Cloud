using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class NamesCountWorkbook
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            WorkbookNamesResponse apiResponse = Common.CellsService.Workbook.ReadWorkbooksNames( input, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Names Count: "+ apiResponse.Names.Count);


        }
    }
}
