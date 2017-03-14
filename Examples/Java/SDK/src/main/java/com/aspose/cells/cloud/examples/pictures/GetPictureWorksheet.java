package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetPictureWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-picture-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetPictureWorksheet.class, input);
            String sheetName = "Sheet1";
            Integer pictureNumber = 0;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.PictureResponse apiResponse = cellsApi.GetWorksheetPicture(input, sheetName,
                    pictureNumber, Utils.STORAGE, Utils.FOLDER);

            System.out.println(" Picture : " + apiResponse.getPicture().getImageFormat());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-picture-worksheet
    }

}