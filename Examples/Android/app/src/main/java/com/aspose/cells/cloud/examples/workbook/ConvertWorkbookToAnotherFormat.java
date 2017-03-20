package com.aspose.cells.cloud.examples.workbook;


import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;


public class ConvertWorkbookToAnotherFormat {

public static void execute(Context context) throws IOException {
// ExStart: convert-workbook-to-different-format
try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			storageApi.PutCreate("sample1.xlsx", null, Utils.STORAGE, inputFile);

			ResponseMessage cr = cellsApi.GetWorkBookWithFormat("sample1.xlsx", "pdf", null, true,
					Utils.STORAGE, Utils.FOLDER, null);
			Utils.copyInputStreamToFile(cr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
// ExEnd: convert-workbook-to-different-format
	}
}