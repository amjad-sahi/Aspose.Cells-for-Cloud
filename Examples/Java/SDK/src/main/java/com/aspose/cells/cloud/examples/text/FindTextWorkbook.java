package com.aspose.cells.cloud.examples.text;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class FindTextWorkbook {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(FindTextWorkbook.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                null,
                inputFile.toFile()
        );
        String text = "aspose";

        com.aspose.cells.model.TextItemsResponse apiResponse
                = Utils.getCellsSdk().PostWorkbooksTextSearch(
                        input,
                        text,
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        for (com.aspose.cells.model.TextItem item : apiResponse.getTextItems().getTextItemList()) {
            System.out.println("Text: " + item.getText());
            System.out.println("Href: " + item.getLink().getHref());
            System.out.println("");
        }
    }

}
