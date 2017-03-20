package com.aspose.cells.cloud.examples.workbook;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

public class ConvertWorkbookToAnotherFormat {

    public static void main(String... args) throws IOException {
        // ExStart: convert-workbook-to-different-format
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

            Path inputFile = Utils.getPath(ConvertWorkbookToAnotherFormat.class, "Workbook1.xlsx");
            Path outputFile = Utils.getPath(ConvertWorkbookToAnotherFormat.class, "Workbook1.pdf");

            storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

            ResponseMessage cr = cellsApi.GetWorkBookWithFormat(inputFile.getFileName().toString(), "pdf", null, true,
                    Utils.STORAGE, Utils.FOLDER, null);

            Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: convert-workbook-to-different-format
    }
}