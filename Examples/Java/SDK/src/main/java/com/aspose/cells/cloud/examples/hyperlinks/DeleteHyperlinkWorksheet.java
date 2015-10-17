package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class DeleteHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(DeleteHyperlinkWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(DeleteHyperlinkWorksheet.class, output);
        String sheetName = "Sheet1";
        Integer linkIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().DeleteWorkSheetHyperlink(
                input,
                sheetName,
                linkIndex,
                Utils.STORAGE,
                Utils.FOLDER
        );

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
