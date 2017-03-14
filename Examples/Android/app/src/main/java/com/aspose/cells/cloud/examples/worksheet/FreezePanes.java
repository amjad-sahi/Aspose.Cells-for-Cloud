package com.aspose.cells.cloud.examples.worksheet;


import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;


public class FreezePanes {

	public static void execute(Context context) throws IOException {
		//ExStart: freeze-panes
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			storageApi.PutCreate("sample1.xlsx", null, Utils.STORAGE, inputFile);

			String sheetName = "Sheet1";
			Integer row = 1;
			Integer column = 1;
			Integer freezedRows = 1;
			Integer freezedColumns = 1;

			cellsApi.PutWorksheetFreezePanes("sample1.xlsx", sheetName, row, column, freezedRows,
					freezedColumns, Utils.FOLDER, Utils.STORAGE);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload("sample1.xlsx",
					null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: freeze-panes

	}
}