package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.rows.*;
import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class GetRowFromWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(GetRowFromWorksheet.class, input);
        
        String sheetName = "Sheet1";
        Integer rowIndex = 1;
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.RowResponse apiResponse = Common.getCellsSdk().GetWorksheetRow(
                input, 
                sheetName, 
                rowIndex, 
                Common.STORAGE, 
                null
        );

        System.out.println(" Row Href : " + apiResponse.getRow().getLink().getHref());

    }
}
