package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetHyperlinkWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer linkIndex = 0;

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.HyperlinkResponse apiResponse
                = Utils.getCellsSdk().GetWorkSheetHyperlink(
                        input,
                        sheetName,
                        linkIndex,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println(" Link : " + apiResponse.getHyperlink().getAddress());

    }

}
