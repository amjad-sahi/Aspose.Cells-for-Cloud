package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class CopyRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(CopyRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(CopyRowsInWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer sourceRowIndex = 1;
        Integer destinationRowIndex = 2;
        Integer rowNumber = 10;
        String worksheet = "Sheet1";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostCopyWorksheetRows(
                input,
                sheetName,
                sourceRowIndex,
                destinationRowIndex,
                rowNumber,
                worksheet,
                Common.STORAGE,
                Common.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
