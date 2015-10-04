package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateSpecificOleObjectsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(UpdateSpecificOleObjectsWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(UpdateSpecificOleObjectsWorksheet.class, output);
        String sourceFileName = "ole.docx";
        Path sourceFile = Common.getPath(UpdateSpecificOleObjectsWorksheet.class, sourceFileName);
        String imageFileName = "picture.png";
        Path imageFile = Common.getPath(UpdateSpecificOleObjectsWorksheet.class, imageFileName);
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        Common.getStorageSdk().PutCreate(
                sourceFileName,
                null,
                Common.STORAGE,
                sourceFile.toFile()
        );
        
        Common.getStorageSdk().PutCreate(
                imageFileName,
                null,
                Common.STORAGE,
                imageFile.toFile()
        );
        
        String sheetName = "Sheet1";
        Integer oleObjectIndex = 0;
                
        com.aspose.cells.model.OleObject body = new com.aspose.cells.model.OleObject();
        body.setSourceFullName(sourceFileName);
        body.setImageSourceFullName(imageFileName);
        body.setUpperLeftRow(15);
        body.setUpperLeftColumn(5);
        body.setTop(10);
        body.setBottom(10);
        body.setLeft(10);
        body.setHeight(200);
        body.setWidth(200);
        body.setIsAutoSize(true);

        Common.getCellsSdk().PostUpdateWorksheetOleObject(
                input, 
                sheetName, 
                oleObjectIndex, 
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
