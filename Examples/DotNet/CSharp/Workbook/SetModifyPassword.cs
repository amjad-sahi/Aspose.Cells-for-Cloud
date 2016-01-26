using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class SetModifyPassword
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);
            
            ProtectDocumentRequest protectDocumentRequest = new ProtectDocumentRequest();
            protectDocumentRequest.Password = "Aspose";

            Common.CellsService.Workbook.ProtectDocumentFromChanges(input, Common.FOLDER, protectDocumentRequest, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);

        }
    }
}
