package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(SetCellWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(SetCellWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellName = "a1";
        String value = "99";
        String type = "int";
        String formula = "";

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
