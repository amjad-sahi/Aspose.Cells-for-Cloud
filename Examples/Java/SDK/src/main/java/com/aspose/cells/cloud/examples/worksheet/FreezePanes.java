package com.aspose.cells.cloud.examples.worksheet;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

public class FreezePanes {

    public static void main(String... args) throws IOException {
        // ExStart: freeze-panes
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

            Path inputFile = Utils.getPath(FreezePanes.class, "Sample1.xlsx");
            Path outputFile = Utils.getPath(FreezePanes.class, "Sample2.xlsx");

            storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

            String sheetName = "Sheet1";
            Integer row = 1;
            Integer column = 1;
            Integer freezedRows = 1;
            Integer freezedColumns = 1;

            cellsApi.PutWorksheetFreezePanes(inputFile.getFileName().toString(), sheetName, row, column, freezedRows,
                    freezedColumns, Utils.FOLDER, Utils.STORAGE);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(inputFile.getFileName().toString(),
                    null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: freeze-panes

    }
}