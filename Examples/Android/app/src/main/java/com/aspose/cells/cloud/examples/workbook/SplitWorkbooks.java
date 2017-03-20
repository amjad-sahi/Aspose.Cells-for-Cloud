package com.aspose.cells.cloud.examples.workbook;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class SplitWorkbooks {

	public static void execute(Context context) throws IOException {
		//ExStart: split-excel-workbooks
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "sample2.xlsx";
			String format = "png";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			Integer from = 0;
			Integer to = 2;
			Integer horizontalResolution = null;
			Integer verticalResolution = null;

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);

			cellsApi.PostWorkbookSplit(input, format, from, to, horizontalResolution, verticalResolution,
					Utils.STORAGE, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: split-excel-workbooks

	}
}