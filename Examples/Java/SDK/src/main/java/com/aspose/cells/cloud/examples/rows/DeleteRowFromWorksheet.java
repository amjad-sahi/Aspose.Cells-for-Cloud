package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteRowFromWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(DeleteRowFromWorksheet.class, input);
        String output = "Sample2.xlsx";
        Path outputFile = Common.getPath(DeleteRowFromWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer rowIndex = 1;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.SaaSposeResponse apiResponse = Common.getCellsSdk().DeleteWorksheetRow(
                input,
                sheetName,
                rowIndex,
                Common.STORAGE,
                null
        );

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
