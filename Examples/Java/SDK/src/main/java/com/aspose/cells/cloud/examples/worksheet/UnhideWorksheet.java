package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnhideWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(UnhideWorksheet.class, input);
        Path outputFile = Utils.getPath(UnhideWorksheet.class, output);
        String sheet = "Sheet1";
        boolean isVisible = true;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.WorksheetResponse wr
                = Utils.getCellsSdk().PutChangeVisibilityWorksheet(
                        input,
                        sheet,
                        isVisible,
                        Utils.STORAGE,
                        null
                );

        System.out.println("Visibility Type: " + wr.getWorksheet().getVisibilityType());

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
