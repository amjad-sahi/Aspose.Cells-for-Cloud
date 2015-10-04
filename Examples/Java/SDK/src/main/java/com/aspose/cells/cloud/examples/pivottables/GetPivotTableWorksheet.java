package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetPivotTableWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetPivotTableWorksheet.class, input);
        String sheetName="Sheet1";
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.PivotTablesResponse  apiResponse
            = Common.getCellsSdk().GetWorksheetPivotTables(
                    input,
                    sheetName,
                    null,
                    null
        );
        
        System.out.println(" Pivot Table "+apiResponse.getPivotTables().getClass().toString());
        
    }

}
