using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class CreateEmptyWorkbook
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string output = "output.xlsx";

            WorkbookResponse apiResponse = 
                Common.CellsService.Workbook.CreateNewWorkbookUsingDeferentMethods(output, 
                string.Empty, string.Empty, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(output, dataDir + output, storage: Common.STORAGE);
        }
    }
}
