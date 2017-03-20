package com.aspose.cells.cloud.examples.oleobjects;


import android.content.Context;
import java.io.File;
import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;

public class GetOleObjectWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: get-ole-objects-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample5));
			String sheetName = "Sheet1";
			Integer objectNumber = 0;
			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.OleObjectResponse apiResponse = cellsApi.GetWorksheetOleObject(input, sheetName,
					objectNumber, Utils.STORAGE, Utils.FOLDER);

			System.out.println(" Pivot Table: " + apiResponse.getOleObject().getFileFormatType());

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-ole-objects-worksheet
	}

}