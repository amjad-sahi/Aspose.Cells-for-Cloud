package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ChangeCellStyleWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ChangeCellStyleWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(ChangeCellStyleWorksheet.class, output);

        String sheetName = "Sheet1";
        String cellName = "A2";
        
        com.aspose.cells.model.Style body = new com.aspose.cells.model.Style();
        com.aspose.cells.model.Font font = new com.aspose.cells.model.Font();
        font.setName("Calibri");
        font.setSize(40);
        body.setFont(font);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostUpdateWorksheetCellStyle(
                input, 
                sheetName, 
                cellName, 
                Common.STORAGE, 
                Common.FOLDER, 
                body
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
