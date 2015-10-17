package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddNewSheet {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(AddNewSheet.class, "Sample.xlsx");
        Path outputFile = Utils.getPath(AddNewSheet.class, "Sample2.xlsx");

        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PutAddNewWorksheet(
                inputFile.getFileName().toString(),
                "NewSheet",
                Utils.STORAGE,
                null
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        inputFile.getFileName().toString(),
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
