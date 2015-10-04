package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddChart {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Common.getPath(AddChart.class, input);
        Path outputFile = Common.getPath(AddChart.class, output);
        String sheet = "Sheet1";
        String chartType = "bar";
        Integer upperLeftRow = 12;
        Integer upperLeftColumn = 12;
        Integer lowerRightRow = 20;
        Integer lowerRightColumn = 20;
        String area = "A1:A3";
        Boolean isVertical = false;
        String categoryData = "";
        Boolean isAutoGetSerialName = true;
        String title = "SalesState";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ChartsResponse apiResposne
                = Common.getCellsSdk().PutWorksheetAddChart(
                        input,
                        sheet,
                        chartType,
                        upperLeftRow,
                        upperLeftColumn,
                        lowerRightRow,
                        lowerRightColumn,
                        area,
                        isVertical,
                        categoryData,
                        isAutoGetSerialName,
                        title,
                        Common.STORAGE,
                        Common.FOLDER
                );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
