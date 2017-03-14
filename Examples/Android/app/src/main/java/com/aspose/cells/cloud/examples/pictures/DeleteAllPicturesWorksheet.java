package com.aspose.cells.cloud.examples.pictures;


import android.content.Context;
import android.graphics.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;


public class DeleteAllPicturesWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: delete-all-pictures-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "sample2.xlsx";
			String sheetName = "Sheet1";


			File inputFile = Utils.stream2file("sample6","xlsx", context.getResources().openRawResource(R.raw.sample6));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.DeleteWorkSheetPictures(input, sheetName, Utils.STORAGE, Utils.FOLDER);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: delete-all-pictures-worksheet

	}

}