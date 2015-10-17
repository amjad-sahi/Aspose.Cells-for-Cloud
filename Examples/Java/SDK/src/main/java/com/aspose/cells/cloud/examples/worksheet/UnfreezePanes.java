package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnfreezePanes {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(UnfreezePanes.class, "Sample1.xlsx");
        Path outputFile = Utils.getPath(UnfreezePanes.class, "Sample2.xlsx");
        
        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        String sheetName="Sheet1";
        Integer row = 1;
        Integer column = 1;
        Integer freezedRows = 1;
        Integer freezedColumns = 1;


        Utils.getCellsSdk().DeleteWorksheetFreezePanes(
                inputFile.getFileName().toString(), 
                sheetName, 
                row, 
                column, 
                freezedRows, 
                freezedColumns, 
                Utils.FOLDER,
                Utils.STORAGE
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        inputFile.getFileName().toString(),
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
