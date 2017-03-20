package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;


public class ChangeCellStyleWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: change-cell-style-in-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			String cellName = "A2";

			com.aspose.cells.model.Style body = new com.aspose.cells.model.Style();
			com.aspose.cells.model.Font font = new com.aspose.cells.model.Font();
			font.setName("Calibri");
			font.setSize(40);
			body.setFont(font);

			storageApi.PutCreate("sample1.xlsx", null, Utils.STORAGE, inputFile);

			cellsApi.PostUpdateWorksheetCellStyle("sample1.xlsx", sheetName, cellName, Utils.STORAGE, Utils.FOLDER,
					body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload("sample1.xlsx", null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: change-cell-style-in-worksheet
	}
}