package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;

public class MergeCellsWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: merge-cells-worksheet
		try {

			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));			String output = "sample2.xlsx";
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			Integer startRow = 1;
			Integer startColumn = 0;
			Integer totalRows = 1;
			Integer totalColumns = 5;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostWorksheetMerge(input, sheetName, startRow, startColumn, totalRows, totalColumns, Utils.STORAGE,
					Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);


		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: merge-cells-worksheet
	}
}