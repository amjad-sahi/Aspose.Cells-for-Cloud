package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

public class CreateWorkbookFromTemplate {

    public static void main(String... args) throws IOException {
        // ExStart: create-empty-workbook-from-template
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

            String template = "Sample3.xls";
            Path templateFile = Utils.getPath(CreateWorkbookFromTemplate.class, template);
            String output = "output-" + UUID.randomUUID() + ".xlsx";
            Path outputFile = Utils.getPath(CreateWorkbookFromTemplate.class, output);

            storageApi.PutCreate(template, null, Utils.STORAGE, templateFile.toFile());
            cellsApi.PutWorkbookCreate(output, template, null, Utils.STORAGE, Utils.FOLDER, null);
            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);
            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: create-empty-workbook-from-template

    }
}