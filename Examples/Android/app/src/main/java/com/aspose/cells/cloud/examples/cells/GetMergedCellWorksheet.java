package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import java.io.File;
import java.io.IOException;
import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;


public class GetMergedCellWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: get-merged-cell-from-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			String sheetName = "Sheet1";
			Integer mergedCellIndex = 0;

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.MergedCellResponse apiResponse = cellsApi.GetWorkSheetMergedCell(input, sheetName,
					mergedCellIndex, Utils.STORAGE, Utils.FOLDER);

			System.out.println("Merge Start Column :: " + apiResponse.getMergedCell().getStartColumn());
			System.out.println("Merge End Column :: " + apiResponse.getMergedCell().getEndColumn());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-merged-cell-from-worksheet
	}
}