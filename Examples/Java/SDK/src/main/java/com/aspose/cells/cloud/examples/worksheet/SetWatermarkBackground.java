package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetWatermarkBackground {

    public static void main(String... args) throws IOException {
        // ExStart: set-watermark-background
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            Path inputFile = Utils.getPath(SetWatermarkBackground.class, "Sample1.xlsx");
            Path outputFile = Utils.getPath(SetWatermarkBackground.class, "Sample2.xlsx");
            Path imageFile = Utils.getPath(SetWatermarkBackground.class, "aspose.png");

            storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

            String sheetName = "Sheet1";

            cellsApi.PutWorkSheetBackground(inputFile.getFileName().toString(), sheetName, Utils.FOLDER, Utils.STORAGE,
                    imageFile.toFile());

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(inputFile.getFileName().toString(),
                    null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: set-watermark-background

    }
}