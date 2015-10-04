package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteAllOleObjectsWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(DeleteAllOleObjectsWorksheet.class, input);
        String sheetName = "Sheet1";
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(DeleteAllOleObjectsWorksheet.class, output);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().DeleteWorksheetOleObjects(
                input,
                sheetName,
                Common.STORAGE,
                Common.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
