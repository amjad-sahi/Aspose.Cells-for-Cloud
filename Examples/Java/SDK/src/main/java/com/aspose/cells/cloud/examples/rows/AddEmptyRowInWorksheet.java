package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddEmptyRowInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(AddEmptyRowInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(AddEmptyRowInWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer rowIndex = 1;
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.RowResponse apiResponse = Utils.getCellsSdk().PutInsertWorksheetRow(
                input, 
                sheetName, 
                rowIndex, 
                Utils.STORAGE,
                null
        );

        System.out.println(" Row Href : " + apiResponse.getRow().getLink().getHref());
        
        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
