package com.aspose.cells.cloud.examples.pictures;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;

public class AddPicturesWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: add-pictures-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "sample2.xlsx";
			String picture = "picture.png";


			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
			File pictureFile = Utils.stream2file("picture","png", context.getResources().openRawResource(R.raw.picture));

			String sheetName = "Sheet1";
			Integer upperLeftRow = 5;
			Integer upperLeftColumn = 5;
			Integer lowerRightRow = 10;
			Integer lowerRightColumn = 10;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);
			storageApi.PutCreate(picture, null, Utils.STORAGE, pictureFile);

			cellsApi.PutWorksheetAddPicture(input, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow,
					lowerRightColumn, picture, Utils.STORAGE, Utils.FOLDER, null);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: add-pictures-worksheet

	}

}