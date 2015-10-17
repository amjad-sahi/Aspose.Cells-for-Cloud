package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class ReplaceTextWorkbook {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ReplaceTextWorkbook.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        String oldValue = "aspose";
        String newValue = "aspose.com";

        com.aspose.cells.model.WorkbookReplaceResponse apiResponse
                = Utils.getCellsSdk().PostWorkbooksTextReplace(
                        input,
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
