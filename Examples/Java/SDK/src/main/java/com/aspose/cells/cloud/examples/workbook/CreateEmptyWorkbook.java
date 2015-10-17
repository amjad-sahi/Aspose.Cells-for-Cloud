package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateEmptyWorkbook {

    public static void main(String... args) throws IOException {
        String output = "Sample-" + UUID.randomUUID().toString() + ".xlsx";
        Path outputFile = Utils.getPath(CreateEmptyWorkbook.class, output);

        Utils.getCellsSdk().PutWorkbookCreate(
                output,
                null,
                null,
                Utils.STORAGE,
                null,
                null
        );

        com.aspose.storage.model.ResponseMessage sr
                = Utils.getStorageSdk().GetDownload(
                        output,
                        null,
                        Utils.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
