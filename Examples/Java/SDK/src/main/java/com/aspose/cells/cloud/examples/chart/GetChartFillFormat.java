package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetChartFillFormat {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetChartFillFormat.class, input);
        String sheet = "Sheet1";
        int chartIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.FillFormatResponse apiResponse
                = Utils.getCellsSdk().GetChartAreaFillFormat(
                        input,
                        sheet,
                        chartIndex,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println("ChatArea FillFormat Type :: "
                + apiResponse.getFillFormat().getType());
    }
}
