package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetChartArea {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(GetChartArea.class, input);
        String sheet = "Sheet1";
        int chartIndex = 0;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ChartAreaResponse apiResponse
                = Common.getCellsSdk().GetChartArea(
                        input,
                        sheet,
                        chartIndex,
                        Common.STORAGE,
                        Common.FOLDER
                );

        System.out.println("Area X: " + apiResponse.getChartArea().getX());
        System.out.println("Area Y: " + apiResponse.getChartArea().getY());
    }
}
