package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class FreezePanes {

    public static void main(String... args) throws IOException {
        Path inputFile = Common.getPath(FreezePanes.class, "Sample1.xlsx");
        Path outputFile = Common.getPath(FreezePanes.class, "Sample2.xlsx");
        
        Common.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        String sheetName="Sheet1";
        Integer row = 1;
        Integer column = 1;
        Integer freezedRows = 1;
        Integer freezedColumns = 1;


        Common.getCellsSdk().PutWorksheetFreezePanes(
                inputFile.getFileName().toString(), 
                sheetName, 
                row, 
                column, 
                freezedRows, 
                freezedColumns, 
                Common.FOLDER, 
                Common.STORAGE
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        inputFile.getFileName().toString(),
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
