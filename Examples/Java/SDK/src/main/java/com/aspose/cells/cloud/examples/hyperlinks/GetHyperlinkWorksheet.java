package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-hyperlink-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetHyperlinkWorksheet.class, input);
            String sheetName = "Sheet1";
            Integer linkIndex = 0;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.HyperlinkResponse apiResponse = cellsApi.GetWorkSheetHyperlink(input, sheetName,
                    linkIndex, Utils.STORAGE, Utils.FOLDER);

            System.out.println(" Link : " + apiResponse.getHyperlink().getAddress());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-hyperlink-worksheet

    }

}