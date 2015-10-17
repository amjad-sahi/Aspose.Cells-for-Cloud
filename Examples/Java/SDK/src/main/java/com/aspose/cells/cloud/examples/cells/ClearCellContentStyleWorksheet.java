package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ClearCellContentStyleWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ClearCellContentStyleWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(ClearCellContentStyleWorksheet.class, output);
        
        String sheetName = "Sheet1";
        String range = "A1:A10";
        Integer startRow = 1;
        Integer startColumn = 1;
        Integer endRow = 2;
        Integer endColumn = 2;
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        Utils.getCellsSdk().PostClearContents(
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
