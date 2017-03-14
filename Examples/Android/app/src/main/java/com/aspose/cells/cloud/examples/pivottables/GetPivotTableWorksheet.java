package com.aspose.cells.cloud.examples.pivottables;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetPivotTableWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: GetPivotTableWorksheet-12345
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample7.xlsx";

			File inputFile = Utils.stream2file("sample7","xlsx", context.getResources().openRawResource(R.raw.sample7));

			String sheetName = "Sheet1";

			storageApi.PutCreate(input, null, null, inputFile);

			com.aspose.cells.model.PivotTablesResponse apiResponse = cellsApi.GetWorksheetPivotTables(input, sheetName,
					null, null);

			System.out.println(" Pivot Table " + apiResponse.getPivotTables().getClass().toString());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: GetPivotTableWorksheet-12345
	}

}