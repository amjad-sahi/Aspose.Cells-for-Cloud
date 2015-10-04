package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class ReplaceTextWorkbook {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ReplaceTextWorkbook.class, input);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        String oldValue = "aspose";
        String newValue = "aspose.com";

        com.aspose.cells.model.WorkbookReplaceResponse apiResponse
                = Common.getCellsSdk().PostWorkbooksTextReplace(
                        input,
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
