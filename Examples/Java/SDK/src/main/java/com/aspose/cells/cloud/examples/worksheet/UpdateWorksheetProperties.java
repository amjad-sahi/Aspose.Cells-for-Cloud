package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateWorksheetProperties {

    public static void main(String... args) throws IOException {
        // ExStart: update-worksheet-properties
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            String output = "Sample2.xlsx";
            Path inputFile = Utils.getPath(UpdateWorksheetProperties.class, input);
            Path outputFile = Utils.getPath(UpdateWorksheetProperties.class, output);
            String sheet = "Sheet1";

            com.aspose.cells.model.Worksheet properties = new com.aspose.cells.model.Worksheet();
            properties.setType("Worksheet");
            properties.setName("Sheet1");
            properties.setIsGridlinesVisible(true);
            properties.setIsPageBreakPreview(true);
            properties.setIsRulerVisible(true);

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            cellsApi.PostUpdateWorksheetProperty(input, sheet, null, Utils.STORAGE, properties);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: update-worksheet-properties

    }
}