package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetPictureWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetPictureWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer pictureNumber = 0;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.PictureResponse apiResponse
                = Common.getCellsSdk().GetWorksheetPicture(
                        input,
                        sheetName,
                        pictureNumber,
                        Common.STORAGE,
                        Common.FOLDER
                );

        System.out.println(" Picture : " + apiResponse.getPicture().getImageFormat());

    }

}
