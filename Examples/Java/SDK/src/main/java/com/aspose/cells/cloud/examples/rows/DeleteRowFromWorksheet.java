package com.aspose.cells.cloud.examples.rows;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

public class DeleteRowFromWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: delete-row-from-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(DeleteRowFromWorksheet.class, input);
            String output = "Sample2.xlsx";
            Path outputFile = Utils.getPath(DeleteRowFromWorksheet.class, output);

            String sheetName = "Sheet1";
            Integer rowIndex = 1;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetRow(input, sheetName,
                    rowIndex, Utils.STORAGE, null);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: delete-row-from-worksheet

    }
}