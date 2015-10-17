package com.aspose.cells.cloud.examples.pictures;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddPicturesWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(AddPicturesWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(AddPicturesWorksheet.class, output);
        String picture = "picture.png";
        Path pictureFile = Utils.getPath(AddPicturesWorksheet.class, picture);
        
        String sheetName = "Sheet1";
        Integer upperLeftRow = 5;
        Integer upperLeftColumn = 5;
        Integer lowerRightRow = 10;
        Integer lowerRightColumn = 10;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        Utils.getStorageSdk().PutCreate(
                picture,
                null,
                Utils.STORAGE,
                pictureFile.toFile()
        );

        Utils.getCellsSdk().PutWorksheetAddPicture(
                input, 
                sheetName, 
                upperLeftRow, 
                upperLeftColumn, 
                lowerRightRow, 
                lowerRightColumn, 
                picture, 
                Utils.STORAGE,
                Utils.FOLDER,
                null
        );
        
        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );
        
        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
