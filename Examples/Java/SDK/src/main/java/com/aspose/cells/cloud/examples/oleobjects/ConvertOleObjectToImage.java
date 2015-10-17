package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertOleObjectToImage {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(ConvertOleObjectToImage.class, input);
        String sheetName = "Sheet1";
        String output = "output.png";
        Path outputFile = Utils.getPath(ConvertOleObjectToImage.class, output);

        Integer objectNumber = 0;
        String format = "png";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ResponseMessage sr
                = Utils.getCellsSdk().GetWorksheetOleObjectWithFormat(
                        input,
                        sheetName,
                        objectNumber,
                        format,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
