package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RemoveModifyPassword {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(RemoveModifyPassword.class, input);
        Path outputFile = Utils.getPath(RemoveModifyPassword.class, output);

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );
        
        Utils.getCellsSdk().DeleteDocumentUnProtectFromChanges(input, null, null);
        
        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
