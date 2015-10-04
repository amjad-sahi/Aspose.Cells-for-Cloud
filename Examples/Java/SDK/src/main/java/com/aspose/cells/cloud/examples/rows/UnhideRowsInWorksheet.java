package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.rows.*;
import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnhideRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(UnhideRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(UnhideRowsInWorksheet.class, output);
        
        String sheetName = "Sheet1";
        Integer startrow = 1;
        Integer totalRows = 1;
        Double height=2.0;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostUnhideWorksheetRows(
                input, 
                sheetName, 
                startrow, 
                totalRows, 
                height,
                null, 
                null
        );
        
        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
