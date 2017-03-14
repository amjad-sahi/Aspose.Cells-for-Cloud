package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class NamesCountWorkbook {

    public static void main(String... args) throws IOException {
        // ExStart: get-names-count-workbook
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            String input = "Sample1.xlsx";
            Path inputFile = Utils.getPath(NamesCountWorkbook.class, input);

            storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

            com.aspose.cells.model.NamesResponse np = cellsApi.GetWorkBookNames(input, null, null);

            System.out.println(np.getNames().getCount());
        } catch (Exception e) {
            e.printStackTrace();
        }

        // ExEnd: get-names-count-workbook

    }
}