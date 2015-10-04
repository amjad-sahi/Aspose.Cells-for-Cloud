package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddPicturesWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AddPicturesWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AddPicturesWorksheet.class, output);
        String picture = "picture.png";
        Path pictureFile = Common.getPath(AddPicturesWorksheet.class, picture);
        
        String sheetName = "Sheet1";
        Integer upperLeftRow = 5;
        Integer upperLeftColumn = 5;
        Integer lowerRightRow = 10;
        Integer lowerRightColumn = 10;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        Common.getStorageSdk().PutCreate(
                picture,
                null,
                Common.STORAGE,
                pictureFile.toFile()
        );

        Common.getCellsSdk().PutWorksheetAddPicture(
                input, 
                sheetName, 
                upperLeftRow, 
                upperLeftColumn, 
                lowerRightRow, 
                lowerRightColumn, 
                picture, 
                Common.STORAGE, 
                Common.FOLDER, 
                null
        );
        
        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );
        
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
