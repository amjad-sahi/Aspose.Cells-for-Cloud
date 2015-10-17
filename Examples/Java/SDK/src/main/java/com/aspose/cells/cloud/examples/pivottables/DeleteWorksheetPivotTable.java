package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteWorksheetPivotTable {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(DeleteWorksheetPivotTable.class, input);
        
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(DeleteWorksheetPivotTable.class, output);
        
        String sheetName="Sheet1";
                
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );

        Utils.getCellsSdk().DeleteWorksheetPivotTables(
                    input,
                    sheetName,
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
