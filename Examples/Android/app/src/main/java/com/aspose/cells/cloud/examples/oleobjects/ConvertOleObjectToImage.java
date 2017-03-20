package com.aspose.cells.cloud.examples.oleobjects;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;


public class ConvertOleObjectToImage {

	public static void execute(Context context) throws IOException {
		//ExStart: convert-ole-object-to-image
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String sheetName = "Sheet1";
			String output = "output.png";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("Chart","xlsx", context.getResources().openRawResource(R.raw.Chart));

			Integer objectNumber = 0;
			String format = "png";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.ResponseMessage sr = cellsApi.GetWorksheetOleObjectWithFormat(input, sheetName,
					objectNumber, format, Utils.STORAGE, Utils.FOLDER);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: convert-ole-object-to-image
	}

}