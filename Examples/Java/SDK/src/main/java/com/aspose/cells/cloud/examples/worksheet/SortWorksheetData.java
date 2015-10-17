package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SortWorksheetData {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(SortWorksheetData.class, input);
        String output = "Sample2.xlsx";
        Path outputFile = Utils.getPath(SortWorksheetData.class, output);

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

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostWorksheetRangeSort(
                input,
                sheetName,
                cellArea,
                Utils.STORAGE,
                Utils.FOLDER,
                body
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        input,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
