package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetCellWorksheet.class, input);

        String sheetName = "Sheet1";
        String cellOrMethodName = "a1";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.CellResponse apiResponse
                = Common.getCellsSdk().GetWorksheetCell(
                        input,
                        sheetName,
                        cellOrMethodName,
                        Common.STORAGE,
                        Common.FOLDER
                );
        com.aspose.cells.model.Cell cell = apiResponse.getCell();
        System.out.println("Cell Name :: " + cell.getName());
        System.out.println("Cell Value :: " + cell.getValue());
    }
}
