package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetWorksheetCount {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(GetWorksheetCount.class, "Sample.xlsx");

        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.WorksheetsResponse wr
                = Utils.getCellsSdk().GetWorkSheets(
                        inputFile.getFileName().toString(),
                        Utils.STORAGE,
                        null
                );

        System.out.println("Count: " + wr.getWorksheets().getWorksheetList().size());
    }
}
