package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SplitWorkbooks {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(SplitWorkbooks.class, input);
        
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(SplitWorkbooks.class, output);
        
        String format = "png";
        Integer from = 0;
        Integer to = 2;
        Integer horizontalResolution = null;
        Integer verticalResolution = null;
        
        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );
        
        
        Utils.getCellsSdk().PostWorkbookSplit(
                input, 
                format, 
                from, 
                to, 
                horizontalResolution, 
                verticalResolution, 
                Utils.STORAGE,
                null
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
