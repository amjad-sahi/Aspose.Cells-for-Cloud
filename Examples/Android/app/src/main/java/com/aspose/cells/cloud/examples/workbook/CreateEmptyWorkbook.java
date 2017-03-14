package com.aspose.cells.cloud.examples.workbook;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;
import java.util.UUID;


public class CreateEmptyWorkbook {

	public static void execute(Context context) throws IOException {
		//ExStart: create-empty-workbook
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String output = "Sample-" + UUID.randomUUID().toString() ;
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file(output,"xlsx", context.getResources().openRawResource(R.raw.sample2));
			cellsApi.PutWorkbookCreate(output, null, null, Utils.STORAGE, null, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: create-empty-workbook

	}
}