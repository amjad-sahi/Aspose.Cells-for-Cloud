package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ClearCellFormattingWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ClearCellFormattingWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(ClearCellFormattingWorksheet.class, output);

        String sheetName = "Sheet1";
        String range = "A1:A12";
        Integer startRow = null;
        Integer startColumn = null;
        Integer endRow = null;
        Integer endColumn = null;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostClearFormats(
                input,
                sheetName,
                range,
                startRow,
                startColumn,
                endRow,
                endColumn,
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
