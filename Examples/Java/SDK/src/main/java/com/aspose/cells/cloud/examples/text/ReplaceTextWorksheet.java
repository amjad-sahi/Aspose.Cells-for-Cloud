package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class ReplaceTextWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ReplaceTextWorksheet.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        String oldValue = "aspose";
        String newValue = "aspose.com";
        String sheetName = "Sheet1";

        com.aspose.cells.model.WorksheetReplaceResponse apiResponse
                = Utils.getCellsSdk().PostWorsheetTextReplace(
                        input,
                        sheetName,
                        oldValue,
                        newValue,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

            System.out.println("Matches: " + apiResponse.getMatches());
        }
    }

}
