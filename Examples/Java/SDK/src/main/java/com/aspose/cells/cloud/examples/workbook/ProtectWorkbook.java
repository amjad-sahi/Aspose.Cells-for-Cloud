package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ProtectWorkbook {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(ProtectWorkbook.class, input);
        Path outputFile = Utils.getPath(ProtectWorkbook.class, output);

        com.aspose.cells.model.WorkbookProtectionRequest properties = new com.aspose.cells.model.WorkbookProtectionRequest();
        properties.setPassword("12345678");
        properties.setProtectionType("All");

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostProtectDocument(
                input,
                Utils.STORAGE,
                null,
                properties
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
