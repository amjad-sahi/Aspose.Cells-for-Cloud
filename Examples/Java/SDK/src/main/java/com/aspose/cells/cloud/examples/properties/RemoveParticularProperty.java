package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class RemoveParticularProperty {

    public static void main(String... args) throws IOException {
        // ExStart: remove-particular-property
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(RemoveParticularProperty.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(RemoveParticularProperty.class, output);
            String propertyName = "Author";

            storageApi.PutCreate(input, Utils.STORAGE, null, inputFile.toFile());

            cellsApi.DeleteDocumentProperty(input, propertyName, Utils.STORAGE, null);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: remove-particular-property

    }

}