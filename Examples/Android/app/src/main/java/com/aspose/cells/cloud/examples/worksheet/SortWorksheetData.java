package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class SortWorksheetData {

	public static void execute(Context context) throws IOException {
		//ExStart: sort-worksheet-data
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			String output = "Sample2.xlsx";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));


			String sheetName = "Sheet1";
			String cellArea = "A1:A10";

			com.aspose.cells.model.SortKey sort = new com.aspose.cells.model.SortKey();
			sort.setKey(0);
			sort.setSortOrder("descending");

			com.aspose.cells.model.DataSorter body = new com.aspose.cells.model.DataSorter();
			body.setCaseSensitive("false");
			body.setHasHeaders("false");
			body.setSortLeftToRight("false");
			body.getKeyList().add(sort);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			cellsApi.PostWorksheetRangeSort(input, sheetName, cellArea, Utils.STORAGE, Utils.FOLDER, body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: sort-worksheet-data
	}
}