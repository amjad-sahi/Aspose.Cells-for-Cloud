package com.aspose.cells.cloud.examples.images;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AutoShapeToImageWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: auto-shape-images
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(AutoShapeToImageWorksheet.class, input);
            String output = "ouput.png";
            Path outputFile = Utils.getPath(AutoShapeToImageWorksheet.class, output);
            String sheetName = "Sheet1";
            Integer autoshapeNumber = 0;
            String format = "png";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.ResponseMessage sr = cellsApi.GetWorksheetAutoshapeWithFormat(input, sheetName,
                    autoshapeNumber, format, Utils.STORAGE, Utils.FOLDER);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: auto-shape-images

    }
}