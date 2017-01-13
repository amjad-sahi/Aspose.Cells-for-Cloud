package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class SetChartTitle {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";
			Path inputFile = Utils.getPath(SetChartTitle.class, input);
			Path outputFile = Utils.getPath(SetChartTitle.class, output);
			String sheet = "Sheet1";
			Integer chartIndex = 0;

			com.aspose.cells.model.Title body = new com.aspose.cells.model.Title();
			body.setHeight(15);
			body.setText("aspose");

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			cellsApi.PutWorksheetChartTitle(input, sheet, chartIndex, Utils.STORAGE, Utils.FOLDER, body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}
