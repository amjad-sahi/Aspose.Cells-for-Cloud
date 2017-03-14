package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: update-hyperlink-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(UpdateHyperlinkWorksheet.class, input);
            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(UpdateHyperlinkWorksheet.class, output);

            String sheetName = "Sheet1";
            Integer hyperlinkIndex = 0;
            com.aspose.cells.model.Hyperlink body = new com.aspose.cells.model.Hyperlink();
            body.setAddress("http://www.aspose.com/cloud/total-api.aspx");
            body.setTextToDisplay("Aspose Cloud APIs");

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            cellsApi.PostWorkSheetHyperlink(input, sheetName, hyperlinkIndex, Utils.STORAGE, Utils.FOLDER, body);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: update-hyperlink-worksheet
    }

}