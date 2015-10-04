package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ClearCellContentStyleWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ClearCellContentStyleWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(ClearCellContentStyleWorksheet.class, output);
        
        String sheetName = "Sheet1";
        String range = "A1:A10";
        Integer startRow = 1;
        Integer startColumn = 1;
        Integer endRow = 2;
        Integer endColumn = 2;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        Common.getCellsSdk().PostClearContents(
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
