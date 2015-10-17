package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertPictureToImageWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ConvertPictureToImageWorksheet.class, input);
        String output = "output.png";
        Path outputFile = Utils.getPath(ConvertPictureToImageWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer pictureNumber = 0;
        String format = "png";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        ResponseMessage sr = Utils.getCellsSdk().GetWorksheetPictureWithFormat(
                input,
                sheetName,
                pictureNumber,
                format,
                Utils.STORAGE,
                Utils.FOLDER
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
