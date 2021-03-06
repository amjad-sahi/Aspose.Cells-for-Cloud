package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetAutoshape {

	public static void execute(Context context) throws IOException {
		//ExStart: get-auto-shape
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			String sheet = "Sheet1";
			int autoshape = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.AutoShapeResponse ar = cellsApi
					.GetWorksheetAutoshape(input, sheet, autoshape, Utils.STORAGE, null);

			System.out.println("Autoshape HTML: " + ar.getAutoShape().getHtmlText());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-auto-shape
	}
}