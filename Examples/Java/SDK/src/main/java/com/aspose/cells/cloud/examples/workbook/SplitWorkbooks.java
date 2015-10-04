package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SplitWorkbooks {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(SplitWorkbooks.class, input);
        
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(SplitWorkbooks.class, output);
        
        String format = "png";
        Integer from = 0;
        Integer to = 2;
        Integer horizontalResolution = null;
        Integer verticalResolution = null;
        
        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );
        
        
        Common.getCellsSdk().PostWorkbookSplit(
                input, 
                format, 
                from, 
                to, 
                horizontalResolution, 
                verticalResolution, 
                Common.STORAGE, 
                null
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
