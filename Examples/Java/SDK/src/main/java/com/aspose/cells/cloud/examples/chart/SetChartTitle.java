package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetChartTitle {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(SetChartTitle.class, input);
        Path outputFile = Utils.getPath(SetChartTitle.class, output);
        String sheet = "Sheet1";
        Integer chartIndex = 0;
        
        com.aspose.cells.model.Title  body = new com.aspose.cells.model.Title ();
        body.setHeight(15);
        body.setText("aspose");

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PutWorksheetChartTitle(
                input,
                sheet,
                chartIndex,
                Utils.STORAGE,
                Utils.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
