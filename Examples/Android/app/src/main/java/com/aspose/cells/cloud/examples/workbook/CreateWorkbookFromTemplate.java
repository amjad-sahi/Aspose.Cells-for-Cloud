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


public class CreateWorkbookFromTemplate {

	public static void execute(Context context) throws IOException {
		//ExStart: create-empty-workbook-from-template
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String template = "Sample3.xls";
			String output = "output-" + UUID.randomUUID() + ".xlsx";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File templateFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			storageApi.PutCreate(template, null, Utils.STORAGE, templateFile);
			cellsApi.PutWorkbookCreate(output, template, null, Utils.STORAGE, Utils.FOLDER, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),templateFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: create-empty-workbook-from-template

	}
}