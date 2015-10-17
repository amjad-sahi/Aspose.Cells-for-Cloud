package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddOleObjectsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(AddOleObjectsWorksheet.class, input);
        String sheetName = "Sheet1";
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(AddOleObjectsWorksheet.class, output);
        String sourceFileName = "ole.docx";
        Path sourceFile = Utils.getPath(AddOleObjectsWorksheet.class, sourceFileName);
        String imageFileName = "picture.png";
        Path imageFile = Utils.getPath(AddOleObjectsWorksheet.class, imageFileName);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getStorageSdk().PutCreate(
                sourceFileName,
                null,
                Utils.STORAGE,
                sourceFile.toFile()
        );

        Utils.getStorageSdk().PutCreate(
                imageFileName,
                null,
                Utils.STORAGE,
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

        Utils.getCellsSdk().PutWorksheetOleObject(
                input,
                sheetName,
                upperLeftRow,
                upperLeftColumn,
                height,
                width,
                oleFile,
                imageFileName,
                Utils.STORAGE,
                Utils.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
