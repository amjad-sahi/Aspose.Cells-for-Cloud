package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetFormulaForCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(SetFormulaForCellWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(SetFormulaForCellWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellName = "A12";
        String value = "";
        String type = "int";
        String formula = "sum(a5:a10)";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostWorksheetCellSetValue(
                input,
                sheetName,
                cellName,
                value,
                type,
                formula,
                Common.STORAGE,
                Common.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
