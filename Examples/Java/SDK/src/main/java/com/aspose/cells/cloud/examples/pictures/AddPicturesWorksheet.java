package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddPicturesWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: add-pictures-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(AddPicturesWorksheet.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(AddPicturesWorksheet.class, output);
            String picture = "picture.png";
            Path pictureFile = Utils.getPath(AddPicturesWorksheet.class, picture);

            String sheetName = "Sheet1";
            Integer upperLeftRow = 5;
            Integer upperLeftColumn = 5;
            Integer lowerRightRow = 10;
            Integer lowerRightColumn = 10;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());
            storageApi.PutCreate(picture, null, Utils.STORAGE, pictureFile.toFile());

            cellsApi.PutWorksheetAddPicture(input, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow,
                    lowerRightColumn, picture, Utils.STORAGE, Utils.FOLDER, null);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }

        // ExEnd: add-pictures-worksheet

    }

}