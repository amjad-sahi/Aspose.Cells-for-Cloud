package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetFormulaForCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(SetFormulaForCellWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(SetFormulaForCellWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellName = "A12";
        String value = "";
        String type = "int";
        String formula = "sum(a5:a10)";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostWorksheetCellSetValue(
                input,
                sheetName,
                cellName,
                value,
                type,
                formula,
                Utils.STORAGE,
                Utils.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
