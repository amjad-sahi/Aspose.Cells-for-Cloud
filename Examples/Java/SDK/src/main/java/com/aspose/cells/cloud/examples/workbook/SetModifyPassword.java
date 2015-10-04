package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetModifyPassword {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Common.getPath(SetModifyPassword.class, input);
        Path outputFile = Common.getPath(SetModifyPassword.class, output);

        com.aspose.cells.model.PasswordRequest properties = new com.aspose.cells.model.PasswordRequest();
        properties.setPassword("aspose");

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        Common.getCellsSdk().PutDocumentProtectFromChanges(input, null, null, properties);
        
        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
