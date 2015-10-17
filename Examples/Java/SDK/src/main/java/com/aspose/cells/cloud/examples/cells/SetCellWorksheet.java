package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(SetCellWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(SetCellWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellName = "a1";
        String value = "99";
        String type = "int";
        String formula = "";

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
