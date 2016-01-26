using Aspose.Cloud;
using System;
namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class GetAutoshape
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            AutoShapeResponse apiResponse = Common.CellsService.Autoshapes.GetAutoshapeInfo(input, sheetName, 0, Common.FOLDER, storage: Common.STORAGE);

            Console.WriteLine(" Autoshape width : " + apiResponse.AutoShape.Width);

        }
    }
}

