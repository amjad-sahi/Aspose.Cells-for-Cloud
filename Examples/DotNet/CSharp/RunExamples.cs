using System;
using System.Collections.Generic;
using System.IO;
using System.Configuration;
using Workbook;
using Document_Properties;
using Images;
using Worksheet;
using Text;
using Charts;
using Hyperlinks;
using Rows;
using Cells;
using OleObjects;
using Pictures;
using ImportData;

namespace CSharp
{
    class RunExamples
    {
        [STAThread]
        public static void Main()
        {
            Console.WriteLine("Open RunExamples.cs. \nIn Main() method uncomment the example that you want to run.");
            Console.WriteLine("=====================================================");

            // Uncomment the one you want to try out

            //// =====================================================
            //// =====================================================
            //// Workbook
            //// =====================================================
            //// =====================================================

            //ConvertToAnotherFormat.Run();
            //ConvertWorkbookToAnotherFormatWithoutStorage.Run();
            //ConvertWorkbookWithAdditionalSettings.Run();
            //CreateEmptyWorkbook.Run();
            //CreateWorkbookFromSmartMakerTemplate.Run();
            //CreateWorkbookFromTemplate.Run();
            //DecryptWorkbook.Run();
            //EncryptWorkbook.Run();
            //MergeWorkbooks.Run();
            //NamesCountWorkbook.Run();
            //ProtectWorkbook.Run();
            //RemoveModifyPassword.Run();
            //SetModifyPassword.Run();
            //SplitWorkbooks.Run();
            //UnprotectWorkbook.Run();   

            //// =====================================================
            //// =====================================================
            //// Document-Properties
            //// =====================================================
            //// =====================================================

            //GetAllProperties.Run();
            //GetParticularProperty.Run();
            //RemoveAllProperties.Run();
            //RemoveParticularProperty.Run();
            //SetParticularProperty.Run();

            //// =====================================================
            //// =====================================================
            //// Images
            //// =====================================================
            //// =====================================================

            //AutoShapeToImageWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// Worksheet
            //// =====================================================
            //// =====================================================

            //AddNewSheet.Run();
            //CalculateFormula.Run();
            //ConvertWorksheetToImage.Run();
            //CopyWorksheet.Run();
            //DeleteWatermarkBackground.Run();
            //FreezePanes.Run();
            //GetAutoshape.Run();
            //GetColumn.Run();
            //GetComment.Run();
            //GetValidation.Run();
            //GetWorksheetCount.Run();
            //HideWorksheet.Run();
            //MoveWorksheet.Run();
            //RemoveWorksheet.Run();
            //RenameWorksheet.Run();
            //SetWatermarkBackground.Run();
            //SortWorksheetData.Run();
            //UnfreezePanes.Run();
            //UnhideWorksheet.Run();
            //UpdateWorksheetProperties.Run();

            //// =====================================================
            //// =====================================================
            //// Text
            //// =====================================================
            //// =====================================================

            //FindTextWorkbook.Run();
            //FindTextWorksheet.Run();
            //GetTextItemWorkbook.Run();
            //GetTextItemWorksheet.Run();
            //ReplaceTextWorkbook.Run();
            //ReplaceTextWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// Charts
            //// =====================================================
            //// =====================================================

            //AddChart.Run();
            //ConvertChartToImage.Run();
            //DeleteAllCharts.Run();
            //DeleteChart.Run();
            //DeleteChartTitle.Run();
            //GetChart.Run();
            //GetChartArea.Run();
            //GetChartFillFormat.Run();
            //GetChartLegend.Run();
            //HideChartLegend.Run();
            //SetChartTitle.Run();
            //ShowChartLegend.Run();
            //UpdateChartLegend.Run();
            //UpdateChartTitle.Run();

            //// =====================================================
            //// =====================================================
            //// Hyperlinks
            //// =====================================================
            //// =====================================================

            //AddHyperlinkWorksheet.Run();
            //DeleteHyperlinkWorksheet.Run();
            //GetHyperlinkWorksheet.Run();
            //UpdateHyperlinkWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// Rows
            //// =====================================================
            //// =====================================================

            //AddEmptyRowInWorksheet.Run();
            //AutoFitRowsInWorksheet.Run();
            //CopyRowsInWorksheet.Run();
            //DeleteRowFromWorksheet.Run();
            //GetRowFromWorksheet.Run();
            //GroupRowsInWorksheet.Run();
            //HideRowsInWorksheet.Run();
            //UngroupRowsInWorksheet.Run();
            //UnhideRowsInWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// Cells
            //// =====================================================
            //// =====================================================

            //ChangeCellStyleWorksheet.Run();
            //ClearCellContentStyleWorksheet.Run();
            //ClearCellFormattingWorksheet.Run();
            //GetCellStyleWorksheet.Run();
            //GetFirstCellWorksheet.Run();
            //GetLastCellWorksheet.Run();
            //GetMaxColumnWorksheet.Run();
            //GetMaxDataColumnWorksheet.Run();
            //GetMaxDataRowWorksheet.Run();
            //GetMaxRowWorksheet.Run();
            //GetMergedCellWorksheet.Run();
            //GetMinColumnWorksheet.Run();
            //GetMinDataColumnWorksheet.Run();
            //GetMinDataRowWorksheet.Run();
            //GetMinRowWorksheet.Run();
            //MergeCellsWorksheet.Run();
            //SetFormulaForCellWorksheet.Run();
            //SetRangeValueWorksheet.Run();
            //SetValueOfCell.Run();
            //UnmergeCellsWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// OleObjects
            //// =====================================================
            //// =====================================================

            //AddOleObjectsWorksheet.Run();
            //ConvertOleObjectToImage.Run();
            //DeleteAllOleObjectsWorksheet.Run();
            //DeleteSpecificOleObjectWorksheet.Run();
            //GetOleObjectWorksheet.Run();
            //UpdateSpecificOleObjectsWorksheet.Run();

            //// =====================================================
            //// =====================================================
            //// Pictures
            //// =====================================================
            //// =====================================================

            //AddPicturesWorksheet.Run();
            //ConvertPictureToImage.Run();
            //DeleteAllPicturesWorksheet.Run();
            //DeleteSpecificPictureWorksheet.Run();
            //GetPictureWorksheet.Run();
            //UpdateSpecificPictureWorksheet.Run();
            

            // Stop before exiting
            Console.WriteLine("\n\nProgram Finished. Press any key to exit....");
            Console.ReadKey();
        }

    }
}
