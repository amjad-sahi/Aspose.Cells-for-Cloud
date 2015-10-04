package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddPivottableWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AddPivottableWorksheet.class, input);
        
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AddPivottableWorksheet.class, output);
        
        String sheetName = "Sheet1";
        String sourceData = "";
        String destCellName = "";
        String tableName = "";
        Boolean useSameSource = true;
        com.aspose.cells.model.CreatePivotTableRequest body = new com.aspose.cells.model.CreatePivotTableRequest();

        body.setName("MyPivot");
        body.setSourceData("A1:B4");
        body.setDestCellName("H20");
        body.setUseSameSource(true);
        body.getPivotFieldRows().add(1);
        body.getPivotFieldColumns().add(1);
        body.getPivotFieldRows().add(1);
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PutWorksheetPivotTable(
                input, 
                sheetName, 
                Common.STORAGE, 
                Common.FOLDER, 
                sourceData, 
                destCellName, 
                tableName, 
                useSameSource, 
                body
        );
        
        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        
    }

}
