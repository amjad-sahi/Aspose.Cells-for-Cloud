package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetRangeValueWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(SetRangeValueWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(SetRangeValueWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellarea = "A10:B20";
        String value = "1234";
        String type = "int";
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostSetCellRangeValue(
                input, 
                sheetName, 
                cellarea, 
                value, 
                type, 
                Utils.STORAGE,
                Utils.FOLDER
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
