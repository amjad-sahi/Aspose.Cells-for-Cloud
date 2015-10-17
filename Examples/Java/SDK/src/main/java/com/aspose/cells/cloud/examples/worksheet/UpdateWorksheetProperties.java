package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateWorksheetProperties {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        String output = "Sample2.xlsx";
        Path inputFile = Utils.getPath(UpdateWorksheetProperties.class, input);
        Path outputFile = Utils.getPath(UpdateWorksheetProperties.class, output);
        String sheet = "Sheet1";

        com.aspose.cells.model.Worksheet properties = new com.aspose.cells.model.Worksheet();
        properties.setType("Worksheet");
        properties.setName("Sheet1");
        properties.setIsGridlinesVisible(true);
        properties.setIsPageBreakPreview(true);
        properties.setIsRulerVisible(true);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostUpdateWorksheetProperty(
                input,
                sheet,
                null,
                Utils.STORAGE,
                properties
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
