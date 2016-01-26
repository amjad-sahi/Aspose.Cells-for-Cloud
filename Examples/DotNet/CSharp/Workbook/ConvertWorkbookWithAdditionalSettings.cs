using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Workbook
{
    class ConvertWorkbookWithAdditionalSettings
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.pdf";
            string outPath = "cellsOut/";

            string xml = @"<PdfSaveOptions>
	            <-- Pdf property -->
	            <CalculateFormula>False</CalculateFormula>
	            <CheckFontCompatibility>False</CheckFontCompatibility>
	            <Compliance>None</Compliance>
	            <OnePagePerSheet>True</OnePagePerSheet>
	            <desiredPPI>90</desiredPPI>
	            <jpegQuality>70</jpegQuality>
	            <SaveFormat>Pdf</SaveFormat>

                </PdfSaveOptions>";


            Common.StorageService.File.UploadFile(dataDir+input, input, storage: Common.STORAGE);

            CellsSaveResultResponse CellsSaveResultResponse =
            Common.CellsService.SaveAs.ConvertDocumentAndSaveResultToStorage(input, outPath + output,
            true, true, xml, Common.FOLDER, storage: Common.STORAGE);
            
            Common.StorageService.File.DownloadFile(outPath+output, dataDir+output, storage: Common.STORAGE);
        }
    }
}
