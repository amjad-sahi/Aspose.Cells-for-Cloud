using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class ConvertWorkbookToAnotherFormatWithoutStorage
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.pdf";
            string outPath = "cellsOut/";
            
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            Common.CellsService.Workbook.ExportWorkbook(input, WorkbookExportFormat.Pdf, string.Empty,
                false, Common.FOLDER, outPath+output, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(outPath+output, dataDir+output, storage: Common.STORAGE);
        }
    }
}
