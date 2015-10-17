package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteWorksheetPivotTableIndex {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(DeleteWorksheetPivotTableIndex.class, input);
        
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(DeleteWorksheetPivotTableIndex.class, output);
        
        Integer pivotTableIndex = 0;
        String sheetName="Sheet1";
                
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );

        Utils.getCellsSdk().DeleteWorksheetPivotTable(
                    input,
                    sheetName,
                    pivotTableIndex,
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
