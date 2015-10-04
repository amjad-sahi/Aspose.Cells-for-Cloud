package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateWorkbookFromSmartMarkerTemplate {

    public static void main(String... args) throws IOException {
        String template ="Designer.xlsx";
        Path templateFile = Common.getPath(CreateWorkbookFromSmartMarkerTemplate.class, template);
        String output = "output-"+UUID.randomUUID()+".xlsx";
        Path outputFile = Common.getPath(CreateWorkbookFromSmartMarkerTemplate.class, output);
        String data = "ReportData.xml";
                Path dataFile = Common.getPath(CreateWorkbookFromSmartMarkerTemplate.class, data);

        Common.getStorageSdk().PutCreate(
                template, 
                null,
                Common.STORAGE, 
                templateFile.toFile()
        );
        
        Common.getStorageSdk().PutCreate(
                data, 
                null,
                Common.STORAGE, 
                dataFile.toFile()
        );
        
        Common.getCellsSdk().PutWorkbookCreate(
                output, 
                template, 
                data, 
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
