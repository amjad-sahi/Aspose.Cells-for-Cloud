package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UngroupRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(UngroupRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(UngroupRowsInWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer firstIndex = 1;
        Integer lastIndex = 2;
        Boolean hide = false;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostUngroupWorksheetRows(
                input, 
                sheetName, 
                firstIndex, 
                lastIndex, 
                hide, 
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
