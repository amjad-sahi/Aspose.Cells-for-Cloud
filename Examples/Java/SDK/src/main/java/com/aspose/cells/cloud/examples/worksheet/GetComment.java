package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetComment {

    public static void main(String... args) throws IOException {
        // ExStart: get-comment-from-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(GetComment.class, input);
            String sheet = "Sheet1";
            String cell = "A1";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.CommentResponse r = cellsApi.GetWorkSheetComment(inputFile.getFileName().toString(),
                    sheet, cell, Utils.STORAGE, null);

            System.out.println("Comment: " + r.getComment().getNote());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-comment-from-worksheet
    }
}