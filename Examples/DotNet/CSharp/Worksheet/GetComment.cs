using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class GetComment
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            CellsCommentResponse apiResponse = Common.CellsService.Worksheets.GetWorksheetCommentByCellName(input, sheetName, "A1", Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Cell Comment : " + apiResponse.Comment.Note);

        }
    }
}

