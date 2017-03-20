package com.aspose.cells.cloud.examples.images;


import android.content.Context;
import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;



public class AutoShapeToImageWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: auto-shape-images
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "ouput.png";

			File inputFile = Utils.stream2file("sample4","xlsx", context.getResources().openRawResource(R.raw.sample4));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			Integer autoshapeNumber = 0;
			String format = "png";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.ResponseMessage sr = cellsApi.GetWorksheetAutoshapeWithFormat(input, sheetName,
					autoshapeNumber, format, Utils.STORAGE, Utils.FOLDER);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: auto-shape-images

	}
}