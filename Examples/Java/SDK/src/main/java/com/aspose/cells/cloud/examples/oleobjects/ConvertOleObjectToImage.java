package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertOleObjectToImage {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(ConvertOleObjectToImage.class, input);
        String sheetName = "Sheet1";
        String output = "output.png";
        Path outputFile = Common.getPath(ConvertOleObjectToImage.class, output);

        Integer objectNumber = 0;
        String format = "png";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.ResponseMessage sr
                = Common.getCellsSdk().GetWorksheetOleObjectWithFormat(
                        input,
                        sheetName,
                        objectNumber,
                        format,
                        Common.STORAGE,
                        Common.FOLDER
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
