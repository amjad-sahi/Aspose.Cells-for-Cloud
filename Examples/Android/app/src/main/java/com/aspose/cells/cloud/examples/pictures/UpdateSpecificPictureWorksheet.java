package com.aspose.cells.cloud.examples.pictures;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;

public class UpdateSpecificPictureWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: update-specfic-pictures-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample5.xlsx";
			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample5));
			String output = "sample2.xlsx";
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
			String sheetName = "Sheet1";Integer pictureIndex = 0;

			com.aspose.cells.model.Picture body = new com.aspose.cells.model.Picture();
			body.setName("Updated Picture Name");
			body.setRotationAngle(90.0);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostWorkSheetPicture(input, sheetName, pictureIndex, Utils.STORAGE, Utils.FOLDER, body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: update-specfic-pictures-worksheet

	}

}