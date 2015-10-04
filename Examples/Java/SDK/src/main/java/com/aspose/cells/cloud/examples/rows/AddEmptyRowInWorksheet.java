package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddEmptyRowInWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AddEmptyRowInWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AddEmptyRowInWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer rowIndex = 1;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.RowResponse apiResponse = Common.getCellsSdk().PutInsertWorksheetRow(
                input, 
                sheetName, 
                rowIndex, 
                Common.STORAGE, 
                null
        );

        System.out.println(" Row Href : " + apiResponse.getRow().getLink().getHref());
        
        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
