package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertChartToImage {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			Path inputFile = Utils.getPath(ConvertChartToImage.class, "Sample.xlsx");
			Path outputFile = Utils.getPath(ConvertChartToImage.class, "Chart.png");

			storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

			ResponseMessage cr = cellsApi.GetWorksheetChartWithFormat(inputFile.getFileName().toString(), "Sheet1", 0,
					"png", Utils.STORAGE, Utils.FOLDER);

			Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
