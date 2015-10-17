package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetComment {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(GetComment.class, input);
        String sheet = "Sheet1";
        String cell = "A1";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.CommentResponse r
                = Utils.getCellsSdk().GetWorkSheetComment(
                        inputFile.getFileName().toString(),
                        sheet,
                        cell,
                        Utils.STORAGE,
                        null
                );

        System.out.println("Comment: " + r.getComment().getNote());
    }
}
