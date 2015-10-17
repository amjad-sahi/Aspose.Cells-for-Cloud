package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CopyWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(CopyWorksheet.class, input);
        Path outputFile = Utils.getPath(CopyWorksheet.class, output);
        String sourceSheet = "Sheet1";
        String copySheet = "Sheet2";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostCopyWorksheet(
                input,
                copySheet,
                sourceSheet,
                null,
                Utils.STORAGE
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
