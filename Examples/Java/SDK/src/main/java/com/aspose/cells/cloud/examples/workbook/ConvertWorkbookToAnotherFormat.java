package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertWorkbookToAnotherFormat {

    public static void main(String... args) throws IOException {
        Path inputFile = Utils.getPath(ConvertWorkbookToAnotherFormat.class, "Workbook1.xlsx");
        Path outputFile = Utils.getPath(ConvertWorkbookToAnotherFormat.class, "Workbook1.pdf");

        Utils.getStorageSdk().PutCreate(
                inputFile.getFileName().toString(),
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        ResponseMessage cr = Utils.getCellsSdk().GetWorkBookWithFormat(
                inputFile.getFileName().toString(),
                "pdf",
                null,
                true,
                Utils.STORAGE,
                Utils.FOLDER,
                null
        );

        Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
