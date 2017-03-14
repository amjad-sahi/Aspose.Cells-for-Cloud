package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnhideWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: unhide-worksheets
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            String output = "Sample2.xlsx";
            Path inputFile = Utils.getPath(UnhideWorksheet.class, input);
            Path outputFile = Utils.getPath(UnhideWorksheet.class, output);
            String sheet = "Sheet1";
            boolean isVisible = true;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.WorksheetResponse wr = cellsApi.PutChangeVisibilityWorksheet(input, sheet, isVisible,
                    Utils.STORAGE, null);

            System.out.println("Visibility Type: " + wr.getWorksheet().getVisibilityType());

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: unhide-worksheets

    }
}