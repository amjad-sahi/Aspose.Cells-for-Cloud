package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertWorksheetToImage {

    public static void main(String... args) throws IOException {
        // ExStart: convert-worksheet-to-image
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(ConvertWorksheetToImage.class, input);
            String output = "output.png";
            Path outputFile = Utils.getPath(ConvertWorksheetToImage.class, output);

            String sheetName = "Sheet1";
            String format = "png";
            Integer verticalResolution = null;
            Integer horizontalResolution = null;

            com.aspose.cells.model.ResponseMessage apiResponse = cellsApi.GetWorkSheetWithFormat(input, sheetName,
                    format, verticalResolution, horizontalResolution, Utils.STORAGE, Utils.FOLDER);

            Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: convert-worksheet-to-image
    }
}