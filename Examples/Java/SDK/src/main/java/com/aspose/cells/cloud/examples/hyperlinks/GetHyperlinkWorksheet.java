package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetHyperlinkWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer linkIndex = 0;

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.HyperlinkResponse apiResponse
                = Common.getCellsSdk().GetWorkSheetHyperlink(
                        input,
                        sheetName,
                        linkIndex,
                        Common.STORAGE,
                        Common.FOLDER
                );

        System.out.println(" Link : " + apiResponse.getHyperlink().getAddress());

    }

}
