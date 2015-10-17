package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetPictureWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetPictureWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer pictureNumber = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.PictureResponse apiResponse
                = Utils.getCellsSdk().GetWorksheetPicture(
                        input,
                        sheetName,
                        pictureNumber,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println(" Picture : " + apiResponse.getPicture().getImageFormat());

    }

}
