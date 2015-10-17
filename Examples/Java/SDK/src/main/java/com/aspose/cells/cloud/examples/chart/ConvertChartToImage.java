package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertChartToImage {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(ConvertChartToImage.class, "Sample.xlsx");
        Path outputFile = Utils.getPath(ConvertChartToImage.class, "Chart.png");

        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        ResponseMessage cr = Utils.getCellsSdk().GetWorksheetChartWithFormat(
                inputFile.getFileName().toString(),
                "Sheet1",
                0,
                "png",
                Utils.STORAGE,
                Utils.FOLDER
        );

        Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
