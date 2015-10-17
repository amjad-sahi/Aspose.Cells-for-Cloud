package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteSpecificPictureWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(DeleteSpecificPictureWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(DeleteSpecificPictureWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer pictureIndex =0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().DeleteWorksheetPicture(
                input,
                sheetName,
                pictureIndex,
                Utils.STORAGE,
                Utils.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );
        
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
