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

public class CreateWorkbookFromSmartMarkerTemplate {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String template = "Designer.xlsx";
			Path templateFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, template);
			String output = "output-" + UUID.randomUUID() + ".xlsx";
			Path outputFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, output);
			String data = "ReportData.xml";
			Path dataFile = Utils.getPath(CreateWorkbookFromSmartMarkerTemplate.class, data);

			storageApi.PutCreate(template, null, Utils.STORAGE, templateFile.toFile());

			storageApi.PutCreate(data, null, Utils.STORAGE, dataFile.toFile());

			cellsApi.PutWorkbookCreate(output, template, data, Utils.STORAGE, Utils.FOLDER, null);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
