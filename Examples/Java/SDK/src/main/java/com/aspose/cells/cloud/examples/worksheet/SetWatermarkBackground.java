package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetWatermarkBackground {

    public static void main(String... args) throws IOException {
        Path inputFile = Common.getPath(SetWatermarkBackground.class, "Sample1.xlsx");
        Path outputFile = Common.getPath(SetWatermarkBackground.class, "Sample2.xlsx");
        Path imageFile = Common.getPath(SetWatermarkBackground.class, "aspose.png");

        Common.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        String sheetName="Sheet1";

        Common.getCellsSdk().PutWorkSheetBackground(
                inputFile.getFileName().toString(), 
                sheetName, 
                Common.FOLDER, 
                Common.STORAGE, 
                imageFile.toFile()
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        inputFile.getFileName().toString(),
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
