package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetCellWorksheet {

    public static void main(String... args) throws IOException {
        // ExStart: get-cell-from-worksheet
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "sample1.xlsx";
            Path inputFile = Utils.getPath(GetCellWorksheet.class, input);

            String sheetName = "Sheet1";
            String cellOrMethodName = "a1";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.CellResponse apiResponse = cellsApi.GetWorksheetCell(input, sheetName,
                    cellOrMethodName, Utils.STORAGE, Utils.FOLDER);
            com.aspose.cells.model.Cell cell = apiResponse.getCell();
            System.out.println("Cell Name :: " + cell.getName());
            System.out.println("Cell Value :: " + cell.getValue());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-cell-from-worksheet
    }
}