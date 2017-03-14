package com.aspose.cells.cloud.examples.cells;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.File;
import java.io.IOException;


public class GetFirstCellWorksheet {

	public static void execute(Context context)  throws IOException {
		//ExStart: get-first-cell-excel-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			String sheetName = "Sheet1";
			String cellOrMethodName = "firstcell";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.CellResponse apiResponse = cellsApi.GetWorksheetCell(input, sheetName,
					cellOrMethodName, Utils.STORAGE, Utils.FOLDER);
			com.aspose.cells.model.Cell cell = apiResponse.getCell();
			System.out.println("Cell Name :: " + cell.getName());
			System.out.println("Cell Value :: " + cell.getValue());

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-first-cell-excel-worksheet
	}
}