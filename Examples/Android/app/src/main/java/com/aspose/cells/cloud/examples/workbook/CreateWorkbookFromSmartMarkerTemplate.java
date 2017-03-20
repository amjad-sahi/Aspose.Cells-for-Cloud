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


public class CreateWorkbookFromSmartMarkerTemplate {

	public static void execute(Context context) throws IOException {
		//ExStart: create-from-smart-marker
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String template = "Designer.xlsx";
			String data = "ReportData.xml";
			String output = "output-" + UUID.randomUUID();

			File templateFile = Utils.stream2file("template","xlsx", context.getResources().openRawResource(R.raw.Designer));
			File outputFile = Utils.stream2file("output","xlsx", context.getResources().openRawResource(R.raw.sample2));
			File dataFile = Utils.stream2file("ReportData","xml", context.getResources().openRawResource(R.raw.ReportData));


			storageApi.PutCreate(template, null, Utils.STORAGE, templateFile);

			storageApi.PutCreate(data, null, Utils.STORAGE, dataFile);
			cellsApi.PutWorkbookCreate(output, template, data, Utils.STORAGE, Utils.FOLDER, null);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(output, null, Utils.STORAGE);

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: create-from-smart-marker
	}
}