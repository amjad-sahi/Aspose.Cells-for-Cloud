package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetMergedCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetMergedCellWorksheet.class, input);

        String sheetName = "Sheet1";
        Integer mergedCellIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.MergedCellResponse apiResponse
                = Utils.getCellsSdk().GetWorkSheetMergedCell(
                        input,
                        sheetName,
                        mergedCellIndex,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println("Merge Start Column :: " + apiResponse.getMergedCell().getStartColumn());
        System.out.println("Merge End Column :: " + apiResponse.getMergedCell().getEndColumn());
    }
}
