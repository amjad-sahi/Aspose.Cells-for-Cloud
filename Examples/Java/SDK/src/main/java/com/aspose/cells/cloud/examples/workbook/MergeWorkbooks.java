package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class MergeWorkbooks {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Common.getPath(MergeWorkbooks.class, input);
        Path outputFile = Common.getPath(MergeWorkbooks.class, output);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        Common.getStorageSdk().PutCreate(
                output,
                null,
                Common.STORAGE,
                outputFile.toFile()
        );

        Common.getCellsSdk().PostWorkbooksMerge(
                input, 
                output, 
                null, 
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
