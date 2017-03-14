package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertPictureToImageWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: convert-pictures-to-image-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(ConvertPictureToImageWorksheet.class, input);
            String output = "output.png";
            Path outputFile = Utils.getPath(ConvertPictureToImageWorksheet.class, output);

            String sheetName = "Sheet1";
            Integer pictureNumber = 0;
            String format = "png";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            ResponseMessage sr = cellsApi.GetWorksheetPictureWithFormat(input, sheetName, pictureNumber, format,
                    Utils.STORAGE, Utils.FOLDER);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: convert-pictures-to-image-worksheet
    }

}