package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateWorkbookFromTemplate {

    public static void main(String... args) throws IOException {
        String template ="Sample3.xls";
        Path templateFile = Common.getPath(CreateWorkbookFromTemplate.class, template);
        String output = "output-"+UUID.randomUUID()+".xlsx";
        Path outputFile = Common.getPath(CreateWorkbookFromTemplate.class, output);

        Common.getStorageSdk().PutCreate(
                template, 
                null,
                Common.STORAGE, 
                templateFile.toFile()
        );
        
        Common.getCellsSdk().PutWorkbookCreate(
                output, 
                template, 
                null, 
                Common.STORAGE, 
                Common.FOLDER, 
                null
        );

        com.aspose.storage.model.ResponseMessage sr
                = Common.getStorageSdk().GetDownload(
                        output,
                        null,
                        Common.STORAGE
                );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }
}
