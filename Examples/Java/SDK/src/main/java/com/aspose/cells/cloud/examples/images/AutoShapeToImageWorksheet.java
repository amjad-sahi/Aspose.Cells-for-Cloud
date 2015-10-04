package com.aspose.cells.cloud.examples.images;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AutoShapeToImageWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AutoShapeToImageWorksheet.class, input);
        String output = "ouput.png";
        Path outputFile = Common.getPath(AutoShapeToImageWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer autoshapeNumber = 0;
        String format = "png";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ResponseMessage sr
                = Common.getCellsSdk().GetWorksheetAutoshapeWithFormat(
                        input,
                        sheetName,
                        autoshapeNumber,
                        format,
                        Common.STORAGE,
                        Common.FOLDER
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
