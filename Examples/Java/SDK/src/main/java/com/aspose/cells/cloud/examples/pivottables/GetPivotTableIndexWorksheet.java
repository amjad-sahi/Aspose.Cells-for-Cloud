package com.aspose.cells.cloud.examples.pivottables;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetPivotTableIndexWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-pivottable-index-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetPivotTableIndexWorksheet.class, input);
            String sheetName = "Sheet1";
            Integer pivottableIndex = 0;

            storageApi.PutCreate(input, null, null, inputFile.toFile());

            com.aspose.cells.model.PivotTableResponse apiResponse = cellsApi.GetWorksheetPivotTable(input, sheetName,
                    pivottableIndex, null, null);

            com.aspose.cells.model.PivotTable pivotTable = apiResponse.getPivotTable();
            System.out.println("Name" + pivotTable.getName());
            for (com.aspose.cells.model.PivotItem item : pivotTable.getBaseFields().get(0).getPivotItems()) {
                System.out.println("Pivot Item Name :: " + item.getName());
                System.out.println("Pivot Item Value :: " + item.getValue());

            }

        }

        catch (Exception e) {
            e.printStackTrace();
        }

        // ExEnd: get-pivottable-index-worksheet

    }

}