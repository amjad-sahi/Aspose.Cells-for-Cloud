package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetChartLegend {

    public static void main(String... args) throws IOException {
        // ExStart: get-chart-legend
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(GetChartLegend.class, input);
            String sheet = "Sheet1";
            int chartIndex = 0;

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.LegendResponse apiResponse = cellsApi.GetWorksheetChartLegend(input, sheet,
                    chartIndex, Utils.STORAGE, Utils.FOLDER);

            System.out.println("Chart Legend Position :: " + apiResponse.getLegend().getPosition());
        }

        catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: get-chart-legend
    }
}