package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class ConvertWorksheetToImage {

	public static void execute(Context context) throws IOException {
		//ExStart: convert-worksheet-to-image
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "output.png";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			String sheetName = "Sheet1";
			String format = "png";
			Integer verticalResolution = null;
			Integer horizontalResolution = null;

			com.aspose.cells.model.ResponseMessage apiResponse = cellsApi.GetWorkSheetWithFormat(input,
					sheetName, format, verticalResolution, horizontalResolution, Utils.STORAGE, Utils.FOLDER);

			Utils.copyInputStreamToFile(apiResponse.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: convert-worksheet-to-image
	}
}