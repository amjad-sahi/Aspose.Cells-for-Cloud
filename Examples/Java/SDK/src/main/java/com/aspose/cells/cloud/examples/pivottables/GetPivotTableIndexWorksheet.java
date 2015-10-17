package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetPivotTableIndexWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetPivotTableIndexWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer pivottableIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.PivotTableResponse apiResponse
                = Utils.getCellsSdk().GetWorksheetPivotTable(
                        input,
                        sheetName,
                        pivottableIndex,
                        null,
                        null
                );

        com.aspose.cells.model.PivotTable pivotTable = apiResponse.getPivotTable();
        System.out.println("Name" + pivotTable.getName());
        for (com.aspose.cells.model.PivotItem item : pivotTable.getBaseFields().get(0).getPivotItems()) {
            System.out.println("Pivot Item Name :: " + item.getName());
            System.out.println("Pivot Item Value :: " + item.getValue());
        }

    }

}
