package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetParticularProperty {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(SetParticularProperty.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(SetParticularProperty.class, output);

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );

        String propertyName = "Author";
        com.aspose.cells.model.CellsDocumentProperty body = new com.aspose.cells.model.CellsDocumentProperty();
        body.setName("AsposeAuthor");
        body.setValue("Aspose Plugin Developer");
        body.setBuiltIn("false");

        Utils.getCellsSdk().PutDocumentProperty(
                input,
                propertyName,
                Utils.STORAGE,
                Utils.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }

}
