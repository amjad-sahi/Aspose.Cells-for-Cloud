package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnmergeCellsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(UnmergeCellsWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(UnmergeCellsWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer startRow = 1;
        Integer startColumn = 0;
        Integer totalRows = 1;
        Integer totalColumns = 5;
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostWorksheetUnmerge(
                input, 
                sheetName, 
                startRow, 
                startColumn, 
                totalRows, 
                totalColumns, 
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
