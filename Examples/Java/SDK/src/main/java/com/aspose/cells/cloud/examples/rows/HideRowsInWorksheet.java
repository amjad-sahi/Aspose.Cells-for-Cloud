package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class HideRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(HideRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(HideRowsInWorksheet.class, output);
        
        String sheetName = "Sheet1";
        Integer startrow = 1;
        Integer totalRows = 1;
        
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostHideWorksheetRows(
                input, 
                sheetName, 
                startrow, 
                totalRows, 
                null, 
                null
        );
        
        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
