package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class SetWatermarkBackground {

	public static void execute(Context context) throws IOException {
		//ExStart: set-watermark-background
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			File inputFile = Utils.stream2file("sample9","xlsx", context.getResources().openRawResource(R.raw.Sample9));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
			File imageFile = Utils.stream2file("aspose","png", context.getResources().openRawResource(R.raw.aspose));

			storageApi.PutCreate( "Sample1.xlsx", null, Utils.STORAGE, inputFile);
			String sheetName = "Sheet1";
			cellsApi.PutWorkSheetBackground( "Sample1.xlsx", sheetName, Utils.FOLDER, Utils.STORAGE,
					imageFile);
			com.aspose.storage.model.ResponseMessage sr = storageApi
					.GetDownload( "Sample1.xlsx", null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: set-watermark-background
	}
}