package com.aspose.cells.cloud.examples.chart;

import android.content.Context;

import java.io.IOException;
import java.io.File;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

public class AddChart {

	public static void execute(Context context) throws IOException {
		// ExSart: convert-chart-to-image
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
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

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.ChartsResponse apiResposne = cellsApi.PutWorksheetAddChart(input, sheet, chartType,
					upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData,
					isAutoGetSerialName, title, Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		// ExEnd: convert-chart-to-image

	}
}
