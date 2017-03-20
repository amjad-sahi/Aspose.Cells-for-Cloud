package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SplitWorkbooks {

    public static void main(String... args) throws IOException {
        // ExStart: split-excel-workbooks
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(SplitWorkbooks.class, input);

            String output = "sample2.xlsx";
            Path outputFile = Utils.getPath(SplitWorkbooks.class, output);

            String format = "png";
            Integer from = 0;
            Integer to = 2;
            Integer horizontalResolution = null;
            Integer verticalResolution = null;

            storageApi.PutCreate(input, Utils.STORAGE, null, inputFile.toFile());

            cellsApi.PostWorkbookSplit(input, format, from, to, horizontalResolution, verticalResolution, Utils.STORAGE,
                    null);

            com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

            Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace();
        }
        // ExEnd: split-excel-workbooks

    }
}