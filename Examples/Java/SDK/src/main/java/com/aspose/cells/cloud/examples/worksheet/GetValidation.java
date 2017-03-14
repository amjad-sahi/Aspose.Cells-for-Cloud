package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetValidation {

    public static void main(String... args) throws IOException {
        // ExStart: get-validation-from-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(GetValidation.class, input);
            String sheet = "Sheet1";
            int index = 0;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.ValidationResponse r = cellsApi
                    .GetWorkSheetValidation(inputFile.getFileName().toString(), sheet, index, Utils.STORAGE, null);

            System.out.println("Validation Type: " + r.getValidation().getType());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-validation-from-worksheet
    }
}