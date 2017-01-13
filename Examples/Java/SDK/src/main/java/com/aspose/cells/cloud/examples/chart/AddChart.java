package com.aspose.cells.cloud.examples.chart;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddChart {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";
			Path inputFile = Utils.getPath(AddChart.class, input);
			Path outputFile = Utils.getPath(AddChart.class, output);
			String sheet = "Sheet1";
			String chartType = "bar";
			Integer upperLeftRow = 12;
			Integer upperLeftColumn = 12;
			Integer lowerRightRow = 20;
			Integer lowerRightColumn = 20;
			String area = "A1:A3";
			Boolean isVertical = false;
			String categoryData = "";
			Boolean isAutoGetSerialName = true;
			String title = "SalesState";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			com.aspose.cells.model.ChartsResponse apiResposne = cellsApi.PutWorksheetAddChart(input, sheet, chartType,
					upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData,
					isAutoGetSerialName, title, Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}
