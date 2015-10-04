package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetRangeValueWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(SetRangeValueWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(SetRangeValueWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellarea = "A10:B20";
        String value = "1234";
        String type = "int";
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostSetCellRangeValue(
                input, 
                sheetName, 
                cellarea, 
                value, 
                type, 
                Common.STORAGE, 
                Common.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
