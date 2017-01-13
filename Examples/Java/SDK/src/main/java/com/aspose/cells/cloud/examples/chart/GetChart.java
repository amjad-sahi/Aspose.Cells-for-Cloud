package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetChart {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			Path inputFile = Utils.getPath(GetChart.class, input);
			String sheet = "Sheet1";
			int chart = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			com.aspose.cells.model.ChartResponse r = cellsApi.GetWorksheetChart(input, sheet, chart, Utils.STORAGE,
					Utils.FOLDER);

			System.out.println("Name: " + r.getChart().getName());
			System.out.println("Type: " + r.getChart().getType());

		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
