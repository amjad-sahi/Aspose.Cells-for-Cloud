package com.aspose.cells.cloud.examples.oleobjects;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;



public class DeleteAllOleObjectsWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: delete-all-ole-objects-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String sheetName = "Sheet1";
			String output = "sample2.xlsx";

			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample5));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.DeleteWorksheetOleObjects(input, sheetName, Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: delete-all-ole-objects-worksheet
	}

}