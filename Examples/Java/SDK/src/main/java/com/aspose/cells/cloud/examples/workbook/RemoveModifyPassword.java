package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RemoveModifyPassword {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Common.getPath(RemoveModifyPassword.class, input);
        Path outputFile = Common.getPath(RemoveModifyPassword.class, output);

        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );
        
        Common.getCellsSdk().DeleteDocumentUnProtectFromChanges(input, null, null); 
        
        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
