package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CopyRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(CopyRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(CopyRowsInWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer sourceRowIndex = 1;
        Integer destinationRowIndex = 2;
        Integer rowNumber = 10;
        String worksheet = "Sheet1";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostCopyWorksheetRows(
                input,
                sheetName,
                sourceRowIndex,
                destinationRowIndex,
                rowNumber,
                worksheet,
                Utils.STORAGE,
                Utils.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
