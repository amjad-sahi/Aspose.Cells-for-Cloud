package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetWatermarkBackground {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(SetWatermarkBackground.class, "Sample1.xlsx");
        Path outputFile = Utils.getPath(SetWatermarkBackground.class, "Sample2.xlsx");
        Path imageFile = Utils.getPath(SetWatermarkBackground.class, "aspose.png");

        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        String sheetName="Sheet1";

        Utils.getCellsSdk().PutWorkSheetBackground(
                inputFile.getFileName().toString(), 
                sheetName, 
                Utils.FOLDER,
                Utils.STORAGE,
                imageFile.toFile()
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        inputFile.getFileName().toString(),
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
