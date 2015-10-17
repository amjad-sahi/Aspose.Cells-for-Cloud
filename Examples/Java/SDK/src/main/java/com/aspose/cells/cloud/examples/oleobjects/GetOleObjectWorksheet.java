package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetOleObjectWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetOleObjectWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer objectNumber = 0;
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.OleObjectResponse apiResponse
                = Utils.getCellsSdk().GetWorksheetOleObject(
                        input,
                        sheetName,
                        objectNumber,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        System.out.println(" Pivot Table: " + apiResponse.getOleObject().getFileFormatType());

    }

}
