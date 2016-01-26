using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class SplitWorkbooks
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.tiff";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            WorkbookSplitResponse apiResponse = Common.CellsService.Workbook.SplitWorkbook(input, CellsSplitFormat.Tiff, 0, 0, 0, 0, Common.FOLDER, storage: Common.STORAGE);

            
            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);

        }
    }
}
