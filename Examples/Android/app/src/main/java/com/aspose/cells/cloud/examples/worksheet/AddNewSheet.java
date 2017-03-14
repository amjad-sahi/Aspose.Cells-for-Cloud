package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class AddNewSheet {

	public static void execute(Context context) throws IOException {
		//ExStart: add-new-excel-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
			storageApi.PutCreate("sample1.xlsx", null, Utils.STORAGE, inputFile);
			cellsApi.PutAddNewWorksheet("sample1.xlsx", "NewSheet", Utils.STORAGE, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload("sample1.xlsx",
					null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: add-new-excel-worksheet

	}
}