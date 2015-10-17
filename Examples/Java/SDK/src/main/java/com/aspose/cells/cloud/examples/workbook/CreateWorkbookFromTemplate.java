package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateWorkbookFromTemplate {

    public static void main(String... args) throws IOException {
        String template ="Sample3.xls";
        Path templateFile = Utils.getPath(CreateWorkbookFromTemplate.class, template);
        String output = "output-"+UUID.randomUUID()+".xlsx";
        Path outputFile = Utils.getPath(CreateWorkbookFromTemplate.class, output);

        Utils.getStorageSdk().PutCreate(
                template, 
                null,
                Utils.STORAGE,
                templateFile.toFile()
        );
        
        Utils.getCellsSdk().PutWorkbookCreate(
                output, 
                template, 
                null, 
                Utils.STORAGE,
                Utils.FOLDER,
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
