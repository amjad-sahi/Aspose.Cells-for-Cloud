package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Common;
import com.aspose.cells.model.ResponseMessage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertPictureToImageWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ConvertPictureToImageWorksheet.class, input);
        String output = "output.png";
        Path outputFile = Common.getPath(ConvertPictureToImageWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer pictureNumber = 0;
        String format = "png";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        ResponseMessage sr = Common.getCellsSdk().GetWorksheetPictureWithFormat(
                input,
                sheetName,
                pictureNumber,
                format,
                Common.STORAGE,
                Common.FOLDER
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
