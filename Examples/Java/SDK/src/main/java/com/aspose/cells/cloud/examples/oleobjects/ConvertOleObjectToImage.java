package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertOleObjectToImage {

    public static void main(String... args) throws IOException {
        // ExStart: convert-ole-object-to-image
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(ConvertOleObjectToImage.class, input);
            String sheetName = "Sheet1";
            String output = "output.png";
            Path outputFile = Utils.getPath(ConvertOleObjectToImage.class, output);

            Integer objectNumber = 0;
            String format = "png";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.ResponseMessage sr = cellsApi.GetWorksheetOleObjectWithFormat(input, sheetName,
                    objectNumber, format, Utils.STORAGE, Utils.FOLDER);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: convert-ole-object-to-image
    }

}