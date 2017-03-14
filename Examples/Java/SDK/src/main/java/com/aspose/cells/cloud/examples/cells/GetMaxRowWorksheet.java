package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetMaxRowWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-max-row-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetMaxRowWorksheet.class, input);

            String sheetName = "Sheet1";
            String cellOrMethodName = "maxrow";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            Integer apiResponse = cellsApi.GetWorksheetCellProperty(input, sheetName, cellOrMethodName, Utils.STORAGE,
                    Utils.FOLDER);
            System.out.println(" MaxRow :: " + apiResponse);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-max-row-worksheet

    }
}