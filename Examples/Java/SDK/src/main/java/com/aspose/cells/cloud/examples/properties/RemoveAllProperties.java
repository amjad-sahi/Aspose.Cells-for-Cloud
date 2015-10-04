package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RemoveAllProperties {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(RemoveAllProperties.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(RemoveAllProperties.class, output);

        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );

        Common.getCellsSdk().DeleteDocumentProperties(
                input,
                Common.STORAGE,
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
