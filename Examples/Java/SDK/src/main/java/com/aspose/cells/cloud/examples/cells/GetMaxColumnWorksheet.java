package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetMaxColumnWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetMaxColumnWorksheet.class, input);

        String sheetName = "Sheet1";
        String cellOrMethodName = "maxcolumn";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Integer apiResponse
                = Utils.getCellsSdk().GetWorksheetCellProperty(
                        input,
                        sheetName,
                        cellOrMethodName,
                        Utils.STORAGE,
                        Utils.FOLDER
                );
        System.out.println(" MaxColumn :: " + apiResponse);

    }
}
