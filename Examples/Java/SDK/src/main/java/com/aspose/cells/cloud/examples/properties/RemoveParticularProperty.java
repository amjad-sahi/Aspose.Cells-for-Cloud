package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RemoveParticularProperty {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(RemoveParticularProperty.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(RemoveParticularProperty.class, output);
        String propertyName = "Author";

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );

        Utils.getCellsSdk().DeleteDocumentProperty(
                input,
                propertyName,
                Utils.STORAGE,
                null
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
