package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class ReplaceTextWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ReplaceTextWorksheet.class, input);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        String oldValue = "aspose";
        String newValue = "aspose.com";
        String sheetName = "Sheet1";

        com.aspose.cells.model.WorksheetReplaceResponse apiResponse
                = Common.getCellsSdk().PostWorsheetTextReplace(
                        input,
                        sheetName,
                        oldValue,
                        newValue,
                        Common.STORAGE,
                        Common.FOLDER
                );

        if (apiResponse != null && apiResponse.getStatus().equals("OK")) {

            System.out.println("Matches: " + apiResponse.getMatches());
        }
    }

}
