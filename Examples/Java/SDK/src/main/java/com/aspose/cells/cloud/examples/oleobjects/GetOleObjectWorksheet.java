package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetOleObjectWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetOleObjectWorksheet.class, input);
        String sheetName = "Sheet1";
        Integer objectNumber = 0;
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.OleObjectResponse apiResponse
                = Common.getCellsSdk().GetWorksheetOleObject(
                        input,
                        sheetName,
                        objectNumber,
                        Common.STORAGE,
                        Common.FOLDER
                );

        System.out.println(" Pivot Table: " + apiResponse.getOleObject().getFileFormatType());

    }

}
