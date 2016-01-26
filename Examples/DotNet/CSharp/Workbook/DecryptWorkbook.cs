using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class DecryptWorkbook
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "ouput.xlsx";
                        
            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            CellsProtectParameter cellsProtectParameter = new CellsProtectParameter(CellsProtectionType.All);
            cellsProtectParameter.Password = "Aspose";
            
            WorkbookEncryptionRequest workbookEncryptionRequest = new WorkbookEncryptionRequest(WorkbookEncryptionType.XOR, 128, "Aspose");

            Common.CellsService.Workbook.DecryptDocument(input, Common.FOLDER, workbookEncryptionRequest, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(input, dataDir+output, storage: Common.STORAGE);

        }
    }
}
