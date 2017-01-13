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

public class CreateEmptyWorkbook {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String output = "Sample-" + UUID.randomUUID().toString() + ".xlsx";
			Path outputFile = Utils.getPath(CreateEmptyWorkbook.class, output);

			cellsApi.PutWorkbookCreate(output, null, null, Utils.STORAGE, null, null);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
