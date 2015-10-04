package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetMergedCellWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetMergedCellWorksheet.class, input);

        String sheetName = "Sheet1";
        Integer mergedCellIndex = 0;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.MergedCellResponse apiResponse
                = Common.getCellsSdk().GetWorkSheetMergedCell(
                        input,
                        sheetName,
                        mergedCellIndex,
                        Common.STORAGE,
                        Common.FOLDER
                );

        System.out.println("Merge Start Column :: " + apiResponse.getMergedCell().getStartColumn());
        System.out.println("Merge End Column :: " + apiResponse.getMergedCell().getEndColumn());
    }
}
