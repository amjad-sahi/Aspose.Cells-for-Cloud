package com.aspose.cells.cloud.examples.oleobjects;

import java.io.IOException;
import java.nio.file.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.SaaSposeResponse;
import com.aspose.storage.api.StorageApi;

public class DeleteSpecificOleObjectWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: 1
        // For complete examples and data files, please go to
        // https://github.com/aspose-cells/Aspose.Cells-for-Cloud
        // Instantiate Aspose Storage API SDK
        StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

        // Instantiate Aspose Words API SDK
        CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
        String fileName = "Embeded_OleObject_Sample_Book1.xlsx";
        String sheetName = "Sheet1";
        int oleObjectIndex = 0;
        String storage = "";
        String folder = "";
        Path inputFile = Utils.getPath(DeleteSpecificOleObjectWorksheet.class, fileName);

        try {
            // Upload source file to aspose cloud storage
            storageApi.PutCreate(fileName, "", "", inputFile.toFile());

            // Invoke Aspose.Cells Cloud SDK API to delete specific OleObject
            // from excel worksheet
            SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetOleObject(fileName, sheetName, oleObjectIndex,
                    storage, folder);

            if (apiResponse != null && apiResponse.getStatus().equals("OK")) {
                System.out.println("Delete a specific OleObject from Excel Worksheet, Done!");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        // ExEnd: 1
    }

}