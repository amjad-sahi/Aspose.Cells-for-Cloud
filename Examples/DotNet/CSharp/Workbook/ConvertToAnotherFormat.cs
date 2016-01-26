using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class ConvertToAnotherFormat
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "originalFormat.xlsx";
            string output = "output.pdf";
            string outPath = "cellsOut/";
            
           



 Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
            
            Common.CellsService.Workbook.ConvertWorkbookToSomeFormat(WorkbookExportFormat.Pdf, string.Empty, outPath+output, dataDir+input);
            
            



Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(outPath+output, dataDir+output);
        }
    }
}
