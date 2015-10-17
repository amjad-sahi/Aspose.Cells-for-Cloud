package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetAutoshape {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetAutoshape.class, input);
        String sheet = "Sheet1";
        int autoshape = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.AutoShapeResponse ar
                = Utils.getCellsSdk().GetWorksheetAutoshape(
                        inputFile.getFileName().toString(),
                        sheet,
                        autoshape,
                        Utils.STORAGE,
                        null
                );

        System.out.println("Autoshape HTML: " + ar.getAutoShape().getHtmlText());
    }
}
