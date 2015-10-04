package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddOleObjectsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AddOleObjectsWorksheet.class, input);
        String sheetName = "Sheet1";
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AddOleObjectsWorksheet.class, output);
        String sourceFileName = "ole.docx";
        Path sourceFile = Common.getPath(AddOleObjectsWorksheet.class, sourceFileName);
        String imageFileName = "picture.png";
        Path imageFile = Common.getPath(AddOleObjectsWorksheet.class, imageFileName);

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

        Integer upperLeftRow = null;
        Integer upperLeftColumn = null;
        Integer height = 200;
        Integer width = 200;
        String oleFile = sourceFileName;

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

        Common.getCellsSdk().PutWorksheetOleObject(
                input,
                sheetName,
                upperLeftRow,
                upperLeftColumn,
                height,
                width,
                oleFile,
                imageFileName,
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
