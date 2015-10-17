package com.aspose.cells.cloud.examples.rows;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetRowFromWorksheet {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetRowFromWorksheet.class, input);
        
        String sheetName = "Sheet1";
        Integer rowIndex = 1;
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.RowResponse apiResponse = Utils.getCellsSdk().GetWorksheetRow(
                input, 
                sheetName, 
                rowIndex, 
                Utils.STORAGE,
                null
        );

        System.out.println(" Row Href : " + apiResponse.getRow().getLink().getHref());

    }
}
