package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetChartTitle {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Common.getPath(SetChartTitle.class, input);
        Path outputFile = Common.getPath(SetChartTitle.class, output);
        String sheet = "Sheet1";
        Integer chartIndex = 0;
        
        com.aspose.cells.model.Title  body = new com.aspose.cells.model.Title ();
        body.setHeight(15);
        body.setText("aspose");

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PutWorksheetChartTitle(
                input,
                sheet,
                chartIndex,
                Common.STORAGE,
                Common.FOLDER,
                body
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
