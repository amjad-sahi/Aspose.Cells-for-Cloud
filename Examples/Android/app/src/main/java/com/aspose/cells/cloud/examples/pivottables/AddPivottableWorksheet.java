package com.aspose.cells.cloud.examples.pivottables;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class AddPivottableWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: add-pivot-table-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String output = "sample2.xlsx";

			File inputFile = Utils.stream2file("sample7","xlsx", context.getResources().openRawResource(R.raw.sample7));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			String sheetName = "Sheet1";
			String sourceData = "";
			String destCellName = "";
			String tableName = "";
			Boolean useSameSource = true;
			com.aspose.cells.model.CreatePivotTableRequest body = new com.aspose.cells.model.CreatePivotTableRequest();

			body.setName("MyPivot");
			body.setSourceData("A1:B4");
			body.setDestCellName("H20");
			body.setUseSameSource(true);
			body.getPivotFieldRows().add(1);
			body.getPivotFieldColumns().add(1);
			body.getPivotFieldRows().add(1);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PutWorksheetPivotTable(input, sheetName, Utils.STORAGE, Utils.FOLDER, sourceData, destCellName,
					tableName, useSameSource, body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: add-pivot-table-worksheet
	}

}