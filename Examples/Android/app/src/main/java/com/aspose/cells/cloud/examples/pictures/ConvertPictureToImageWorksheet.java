package com.aspose.cells.cloud.examples.pictures;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;

public class ConvertPictureToImageWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: convert-pictures-to-image-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "output.png";

			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample5));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			Integer pictureNumber = 0;
			String format = "png";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			ResponseMessage sr = cellsApi.GetWorksheetPictureWithFormat(input, sheetName, pictureNumber, format,
					Utils.STORAGE, Utils.FOLDER);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: convert-pictures-to-image-worksheet
	}

}