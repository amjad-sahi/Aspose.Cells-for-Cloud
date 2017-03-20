package com.aspose.cells.cloud.examples.text;

import java.io.IOException;
import java.nio.file.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

public class GetTextItemWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-text-item-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetTextItemWorksheet.class, input);
            String sheetName = "Sheet1";
            storageApi.PutCreate(input, null, null, inputFile.toFile());

            com.aspose.cells.model.TextItemsResponse apiResponse = cellsApi.GetWorkSheetTextItems(input, sheetName,
                    null, null);

            for (com.aspose.cells.model.TextItem item : apiResponse.getTextItems().getTextItemList()) {
                System.out.println("Text: " + item.getText());
                System.out.println("Href: " + item.getLink().getHref());
                System.out.println("");
            }
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-text-item-worksheet
    }

}