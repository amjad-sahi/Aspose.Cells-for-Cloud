package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.rows.*;
import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AutoFitRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AutoFitRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AutoFitRowsInWorksheet.class, output);
        
        String password = "";
        Boolean isAutoFit = true;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().GetWorkBook(
                input, 
                password, 
                isAutoFit, 
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
