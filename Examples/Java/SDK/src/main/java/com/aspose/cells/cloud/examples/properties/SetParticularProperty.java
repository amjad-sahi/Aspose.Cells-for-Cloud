package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetParticularProperty {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(SetParticularProperty.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(SetParticularProperty.class, output);

        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );

        String propertyName = "Author";
        com.aspose.cells.model.CellsDocumentProperty body = new com.aspose.cells.model.CellsDocumentProperty();
        body.setName("AsposeAuthor");
        body.setValue("Aspose Plugin Developer");
        body.setBuiltIn("false");

        Common.getCellsSdk().PutDocumentProperty(
                input,
                propertyName,
                Common.STORAGE,
                Common.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }

}
