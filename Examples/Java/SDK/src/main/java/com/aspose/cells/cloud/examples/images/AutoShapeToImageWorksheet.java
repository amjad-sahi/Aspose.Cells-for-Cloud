package com.aspose.cells.cloud.examples.images;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AutoShapeToImageWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(AutoShapeToImageWorksheet.class, input);
        String output = "ouput.png";
        Path outputFile = Utils.getPath(AutoShapeToImageWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer autoshapeNumber = 0;
        String format = "png";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ResponseMessage sr
                = Utils.getCellsSdk().GetWorksheetAutoshapeWithFormat(
                        input,
                        sheetName,
                        autoshapeNumber,
                        format,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
