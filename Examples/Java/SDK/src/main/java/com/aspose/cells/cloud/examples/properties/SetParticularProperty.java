package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetParticularProperty {

    public static void main(String... args) throws IOException {
        // ExStart: set-particular-property
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(SetParticularProperty.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(SetParticularProperty.class, output);

            storageApi.PutCreate(input, Utils.STORAGE, null, inputFile.toFile());

            String propertyName = "Author";
            com.aspose.cells.model.CellsDocumentProperty body = new com.aspose.cells.model.CellsDocumentProperty();
            body.setName("AsposeAuthor");
            body.setValue("Aspose Plugin Developer");
            body.setBuiltIn("false");

            cellsApi.PutDocumentProperty(input, propertyName, Utils.STORAGE, Utils.FOLDER, body);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: set-particular-property
    }

}