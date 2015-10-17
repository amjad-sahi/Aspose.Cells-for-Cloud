package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetChartArea {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetChartArea.class, input);
        String sheet = "Sheet1";
        int chartIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ChartAreaResponse apiResponse
                = Utils.getCellsSdk().GetChartArea(
                        input,
                        sheet,
                        chartIndex,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println("Area X: " + apiResponse.getChartArea().getX());
        System.out.println("Area Y: " + apiResponse.getChartArea().getY());
    }
}
