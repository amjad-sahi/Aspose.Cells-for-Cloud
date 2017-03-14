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


public class GetPictureWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: get-picture-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample5.xlsx";

			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample1));
			String sheetName = "Sheet1";
			Integer pictureNumber = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.PictureResponse apiResponse = cellsApi.GetWorksheetPicture(input, sheetName,
					pictureNumber, Utils.STORAGE, Utils.FOLDER);

			System.out.println(" Picture : " + apiResponse.getPicture().getImageFormat());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-picture-worksheet
	}

}