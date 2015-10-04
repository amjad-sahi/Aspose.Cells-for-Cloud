package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class GroupRowsInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GroupRowsInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(GroupRowsInWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer firstIndex = 1;
        Integer lastIndex = 2;
        Boolean hide = false;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostGroupWorksheetRows(
                input, 
                sheetName, 
                firstIndex, 
                lastIndex, 
                hide, 
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
