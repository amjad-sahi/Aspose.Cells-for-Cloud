package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AutoFitRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(AutoFitRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(AutoFitRowsInWorksheet.class, output);
        
        String password = "";
        Boolean isAutoFit = true;
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().GetWorkBook(
                input, 
                password, 
                isAutoFit, 
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
