package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetCellStyleWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetCellStyleWorksheet.class, input);

        String sheetName = "Sheet1";
        String cellName = "a1";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.StyleResponse apiResponse = Common.getCellsSdk().GetWorksheetCellStyle(
                input,
                sheetName,
                cellName,
                Common.STORAGE,
                Common.FOLDER
        );

        System.out.println("Cell Style Font :: " + apiResponse.getStyle().getFont().getName());
    }
}
