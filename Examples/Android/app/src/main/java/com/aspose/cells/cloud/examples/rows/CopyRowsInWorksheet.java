package com.aspose.cells.cloud.examples.rows;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class CopyRowsInWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: copy-rows-in-worksheet
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
			Integer sourceRowIndex = 1;
			Integer destinationRowIndex = 2;
			Integer rowNumber = 10;
			String worksheet = "Sheet1";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostCopyWorksheetRows(input, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, worksheet,
					Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: copy-rows-in-worksheet

	}
}