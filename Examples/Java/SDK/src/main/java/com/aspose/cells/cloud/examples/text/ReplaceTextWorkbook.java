package com.aspose.cells.cloud.examples.text;

import java.io.IOException;
import java.nio.file.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

public class ReplaceTextWorkbook {

    public static void main(String... args) throws IOException {
        // ExStart: replace-text-workbook
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(ReplaceTextWorkbook.class, input);

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());
            String oldValue = "aspose";
            String newValue = "aspose.com";

            com.aspose.cells.model.WorkbookReplaceResponse apiResponse = cellsApi.PostWorkbooksTextReplace(input,
                    oldValue, newValue, Utils.STORAGE, Utils.FOLDER);

            if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

                System.out.println("Matches: " + apiResponse.getMatches());
            }

        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: replace-text-workbook
    }

}