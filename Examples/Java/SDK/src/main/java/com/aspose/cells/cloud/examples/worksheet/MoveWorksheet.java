package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class MoveWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: move-excel-worksheets
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            String output = "Sample2.xlsx";
            Path inputFile = Utils.getPath(MoveWorksheet.class, input);
            Path outputFile = Utils.getPath(MoveWorksheet.class, output);
            String sheet = "Sheet2";
            com.aspose.cells.model.WorksheetMovingRequest move = new com.aspose.cells.model.WorksheetMovingRequest();
            move.setDestinationWorksheet("Sheet5");
            move.setPosition("after");

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.WorksheetsResponse wr = cellsApi.PostMoveWorksheet(input, sheet, Utils.STORAGE, null,
                    move);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: move-excel-worksheets

    }
}