package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SortWorksheetData {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(SortWorksheetData.class, input);
        String output = "Sample2.xlsx";
        Path outputFile = Common.getPath(SortWorksheetData.class, output);

        String sheetName = "Sheet1";
        String cellArea = "A1:A10";

        com.aspose.cells.model.SortKey sort = new com.aspose.cells.model.SortKey();
        sort.setKey(0);
        sort.setSortOrder("descending");

        com.aspose.cells.model.DataSorter body = new com.aspose.cells.model.DataSorter();
        body.setCaseSensitive("false");
        body.setHasHeaders("false");
        body.setSortLeftToRight("false");
        body.getKeyList().add(sort);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostWorksheetRangeSort(
                input,
                sheetName,
                cellArea,
                Common.STORAGE,
                Common.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        input,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
