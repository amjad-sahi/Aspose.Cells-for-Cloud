package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetOleObjectWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-ole-objects-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetOleObjectWorksheet.class, input);
            String sheetName = "Sheet1";
            Integer objectNumber = 0;
            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.OleObjectResponse apiResponse = cellsApi.GetWorksheetOleObject(input, sheetName,
                    objectNumber, Utils.STORAGE, Utils.FOLDER);

            System.out.println(" Pivot Table: " + apiResponse.getOleObject().getFileFormatType());

        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-ole-objects-worksheet
    }

}