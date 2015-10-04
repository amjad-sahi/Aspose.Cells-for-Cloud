package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateSpecificPictureWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(UpdateSpecificPictureWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(UpdateSpecificPictureWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer pictureIndex =0;
        
        com.aspose.cells.model.Picture body = new com.aspose.cells.model.Picture();
        body.setName("Updated Picture Name");
        body.setRotationAngle(90.0);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostWorkSheetPicture(
                input,
                sheetName,
                pictureIndex,
                Common.STORAGE,
                Common.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );
        
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
