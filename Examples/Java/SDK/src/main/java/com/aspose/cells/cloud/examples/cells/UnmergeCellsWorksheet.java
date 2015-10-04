package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnmergeCellsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(UnmergeCellsWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(UnmergeCellsWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer startRow = 1;
        Integer startColumn = 0;
        Integer totalRows = 1;
        Integer totalColumns = 5;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostWorksheetUnmerge(
                input, 
                sheetName, 
                startRow, 
                startColumn, 
                totalRows, 
                totalColumns, 
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
