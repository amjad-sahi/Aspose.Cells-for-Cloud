package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteRowFromWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(DeleteRowFromWorksheet.class, input);
        String output = "Sample2.xlsx";
        Path outputFile = Utils.getPath(DeleteRowFromWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer rowIndex = 1;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.SaaSposeResponse apiResponse = Utils.getCellsSdk().DeleteWorksheetRow(
                input,
                sheetName,
                rowIndex,
                Utils.STORAGE,
                null
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
