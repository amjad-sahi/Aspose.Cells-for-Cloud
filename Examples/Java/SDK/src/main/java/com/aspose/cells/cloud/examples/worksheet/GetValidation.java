package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetValidation {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetValidation.class, input);
        String sheet = "Sheet1";
        int index = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ValidationResponse r
                = Utils.getCellsSdk().GetWorkSheetValidation(
                        inputFile.getFileName().toString(),
                        sheet,
                        index,
                        Utils.STORAGE,
                        null
                );

        System.out.println("Validation Type: " + r.getValidation().getType());
    }
}
