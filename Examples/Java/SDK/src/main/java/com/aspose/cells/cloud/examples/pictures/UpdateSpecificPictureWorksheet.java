package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateSpecificPictureWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: update-specfic-pictures-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(UpdateSpecificPictureWorksheet.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(UpdateSpecificPictureWorksheet.class, output);
            String sheetName = "Sheet1";
            Integer pictureIndex = 0;

            com.aspose.cells.model.Picture body = new com.aspose.cells.model.Picture();
            body.setName("Updated Picture Name");
            body.setRotationAngle(90.0);

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            cellsApi.PostWorkSheetPicture(input, sheetName, pictureIndex, Utils.STORAGE, Utils.FOLDER, body);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: update-specfic-pictures-worksheet

    }

}