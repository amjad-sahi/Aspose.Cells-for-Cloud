using Aspose.Cloud;
using Aspose.Cloud.Common;
using System;
using System.Collections;
using System.Collections.Generic;

namespace Aspose.Cells.Cloud.Examples.Worksheet
{
    class SortWorksheetData
    {
        static void Main()
        {
            string dataDir = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);

            string input = "sample1.xlsx";
            string output = "output.xlsx";

            Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

            string sheetName = "Sheet1";

            CellsDataSorterRequest dataSorter = new CellsDataSorterRequest();
            dataSorter.CaseSensitive = true;
            dataSorter.HasHeaders = true;

            CellsKeyList cellsKeyList = new CellsKeyList();
            cellsKeyList.Key = 0;
            cellsKeyList.SortOrder = "DESCENDING";

            dataSorter.KeyList = new List<CellsKeyList>();

            dataSorter.KeyList.Add(cellsKeyList);

            Common.CellsService.Worksheets.SortWorksheetRange(input, sheetName, "A1:A10", dataSorter, Common.FOLDER, storage: Common.STORAGE);

            Common.StorageService.File.DownloadFile(input, dataDir + output, storage: Common.STORAGE);

        }
    }
}

