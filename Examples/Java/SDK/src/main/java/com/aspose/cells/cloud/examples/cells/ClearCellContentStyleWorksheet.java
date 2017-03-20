package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ClearCellContentStyleWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: clear-cell-content-style
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(ClearCellContentStyleWorksheet.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(ClearCellContentStyleWorksheet.class, output);

            String sheetName = "Sheet1";
            String range = "A1:A10";
            Integer startRow = 1;
            Integer startColumn = 1;
            Integer endRow = 2;
            Integer endColumn = 2;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            cellsApi.PostClearContents(input, sheetName, range, startRow, startColumn, endRow, endColumn, Utils.STORAGE,
                    Utils.FOLDER);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: clear-cell-content-style
    }
}