package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;



public class ClearCellFormattingWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: clear-cells-formatting
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "sample2.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			String sheetName = "Sheet1";
			String range = "A1:A12";
			Integer startRow = null;
			Integer startColumn = null;
			Integer endRow = null;
			Integer endColumn = null;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostClearFormats(input, sheetName, range, startRow, startColumn, endRow, endColumn, Utils.STORAGE,
					Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: clear-cells-formatting

	}
}