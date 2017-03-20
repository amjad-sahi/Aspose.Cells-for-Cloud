package com.aspose.cells.cloud.examples.chart;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;



public class ConvertChartToImage {

	public static void execute(Context context) throws IOException {
		//ExStart: convert-chart-to-image
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);


			File inputFile = Utils.stream2file("sample","xlsx", context.getResources().openRawResource(R.raw.Sample));
			File outputFile = Utils.stream2file("Chart","png", context.getResources().openRawResource(R.raw.Chart));


			storageApi.PutCreate("sample.xlsx", null, Utils.STORAGE, inputFile);

			ResponseMessage cr = cellsApi.GetWorksheetChartWithFormat("sample.xlsx", "Sheet1", 0,
					"png", Utils.STORAGE, Utils.FOLDER);

			Utils.copyInputStreamToFile(cr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: convert-chart-to-image
	}
}