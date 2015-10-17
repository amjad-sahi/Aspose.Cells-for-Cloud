package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetChart {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetChart.class, input);
        String sheet = "Sheet1";
        int chart = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ChartResponse r
                = Utils.getCellsSdk().GetWorksheetChart(
                        input,
                        sheet,
                        chart,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println("Name: " + r.getChart().getName());
        System.out.println("Type: " + r.getChart().getType());
    }
}
