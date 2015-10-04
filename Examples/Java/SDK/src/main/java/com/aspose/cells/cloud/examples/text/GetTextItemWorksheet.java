package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetTextItemWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetTextItemWorksheet.class, input);
        String sheetName = "Sheet1";
        Common.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.TextItemsResponse apiResponse
            = Common.getCellsSdk().GetWorkSheetTextItems(
                    input,
                    sheetName,
                    null,
                    null
        );
        
        for (com.aspose.cells.model.TextItem item : apiResponse.getTextItems().getTextItemList()) {
            System.out.println("Text: " + item.getText());
            System.out.println("Href: " + item.getLink().getHref());
            System.out.println("");
        }
    }

}
