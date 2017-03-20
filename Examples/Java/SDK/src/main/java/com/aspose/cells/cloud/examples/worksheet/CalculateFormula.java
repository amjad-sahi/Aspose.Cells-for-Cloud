package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class CalculateFormula {

    public static void main(String... args) throws IOException {
        // ExStart: calculate-formula-worksheets
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(CalculateFormula.class, input);
            String sheet = "Sheet1";
            String formula = "SUM(A1:A10)";

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.SingleValueResponse r = cellsApi.GetWorkSheetCalculateFormula(
                    inputFile.getFileName().toString(), sheet, formula, Utils.STORAGE, null);

            System.out.println("Result: " + r.getValue().getValue());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: calculate-formula-worksheets
    }
}