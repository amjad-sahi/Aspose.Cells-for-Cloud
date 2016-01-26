using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class MergeWorkbooks
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample2.xlsx";
            string mergeWith = "sample3.xlsx";
            string output = "output.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);
            Common.StorageService.File.UploadFile(dataDir+mergeWith, mergeWith, storage: Common.STORAGE);

            Common.CellsService.Workbook.MergeWorkbooks(input, mergeWith, Common.FOLDER, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);
        }
    }
}
