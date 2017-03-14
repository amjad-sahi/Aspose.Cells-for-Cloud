package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetWorksheetCount {

	public static void execute(Context context) throws IOException {
		//ExStart: get-worksheet-count
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			storageApi.PutCreate("sample1.xlsx", null, Utils.STORAGE, inputFile);
			com.aspose.cells.model.WorksheetsResponse wr = cellsApi.GetWorkSheets("sample1.xlsx",
					Utils.STORAGE, null);
			System.out.println("Count: " + wr.getWorksheets().getWorksheetList().size());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-worksheet-count
	}
}