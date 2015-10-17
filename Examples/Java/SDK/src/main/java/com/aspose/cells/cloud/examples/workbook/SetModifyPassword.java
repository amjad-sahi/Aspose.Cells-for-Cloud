package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetModifyPassword {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(SetModifyPassword.class, input);
        Path outputFile = Utils.getPath(SetModifyPassword.class, output);

        com.aspose.cells.model.PasswordRequest properties = new com.aspose.cells.model.PasswordRequest();
        properties.setPassword("aspose");

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        Utils.getCellsSdk().PutDocumentProtectFromChanges(input, null, null, properties);
        
        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
