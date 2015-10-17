package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetCellStyleWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetCellStyleWorksheet.class, input);

        String sheetName = "Sheet1";
        String cellName = "a1";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.StyleResponse apiResponse = Utils.getCellsSdk().GetWorksheetCellStyle(
                input,
                sheetName,
                cellName,
                Utils.STORAGE,
                Utils.FOLDER
        );

        System.out.println("Cell Style Font :: " + apiResponse.getStyle().getFont().getName());
    }
}
