package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateWorkbookFromSmartMarkerTemplate {

    public static void main(String... args) throws IOException {
        String template ="Designer.xlsx";
        Path templateFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, template);
        String output = "output-"+UUID.randomUUID()+".xlsx";
        Path outputFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, output);
        String data = "ReportData.xml";
                Path dataFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, data);

        Utils.getStorageSdk().PutCreate(
                template, 
                null,
                Utils.STORAGE,
                templateFile.toFile()
        );
        
        Utils.getStorageSdk().PutCreate(
                data, 
                null,
                Utils.STORAGE,
                dataFile.toFile()
        );
        
        Utils.getCellsSdk().PutWorkbookCreate(
                output, 
                template, 
                data, 
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
