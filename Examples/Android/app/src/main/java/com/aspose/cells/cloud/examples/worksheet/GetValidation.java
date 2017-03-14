package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetValidation {

	public static void execute(Context context) throws IOException {
		//ExStart: get-validation-from-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			String sheet = "Sheet1";
			int index = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.ValidationResponse r = cellsApi
					.GetWorkSheetValidation(input, sheet, index, Utils.STORAGE, null);

			System.out.println("Validation Type: " + r.getValidation().getType());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-validation-from-worksheet
	}
}