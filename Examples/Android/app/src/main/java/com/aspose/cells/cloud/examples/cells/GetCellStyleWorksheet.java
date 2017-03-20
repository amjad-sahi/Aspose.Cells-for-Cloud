package com.aspose.cells.cloud.examples.cells;


import android.content.Context;
import android.util.Log;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;



public class GetCellStyleWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: get-cell-style-from-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			String cellName = "a1";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.StyleResponse apiResponse = cellsApi.GetWorksheetCellStyle(input, sheetName,
					cellName, Utils.STORAGE, Utils.FOLDER);

			Log.d("aspose-example","Cell Style Font :: " + apiResponse.getStyle().getFont().getName());

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-cell-style-from-worksheet
	}
}