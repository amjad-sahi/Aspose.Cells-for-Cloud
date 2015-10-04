package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(AddHyperlinkWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(AddHyperlinkWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer firstRow = 2;
        Integer firstColumn = 2;
        Integer totalRows = 2;
        Integer totalColumns = 2;
        String address = "http://www.aspose.com/cloud/total-api.aspx";

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PutWorkSheetHyperlink(
                input, 
                sheetName, 
                firstRow, 
                firstColumn, 
                totalRows, 
                totalColumns, 
                address, 
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
