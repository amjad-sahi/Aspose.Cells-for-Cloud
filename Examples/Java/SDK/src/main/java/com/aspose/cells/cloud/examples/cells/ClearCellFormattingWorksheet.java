package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ClearCellFormattingWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ClearCellFormattingWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(ClearCellFormattingWorksheet.class, output);

        String sheetName = "Sheet1";
        String range = "A1:A12";
        Integer startRow = null;
        Integer startColumn = null;
        Integer endRow = null;
        Integer endColumn = null;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostClearFormats(
                input,
                sheetName,
                range,
                startRow,
                startColumn,
                endRow,
                endColumn,
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
