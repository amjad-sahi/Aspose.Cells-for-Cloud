package com.aspose.cells.cloud.examples.chart;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;


public class GetChartArea {

	public static void execute(Context context) throws IOException {
		//ExStart: get-chart-area
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			String sheet = "Sheet1";
			int chartIndex = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.ChartAreaResponse apiResponse = cellsApi.GetChartArea(input, sheet, chartIndex,
					Utils.STORAGE, Utils.FOLDER);

			System.out.println("Area X: " + apiResponse.getChartArea().getX());
			System.out.println("Area Y: " + apiResponse.getChartArea().getY());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-chart-area
	}
}