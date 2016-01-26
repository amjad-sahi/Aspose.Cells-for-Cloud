using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class GetWorksheetCount
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            //string output = "ouput.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            WorksheetsResponse apiResponse = Common.CellsService.Worksheets.ReadWorksheetsInfo(input, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Respoonse: " + apiResponse.Worksheets.WorksheetList.Count);

        }
    }
}

