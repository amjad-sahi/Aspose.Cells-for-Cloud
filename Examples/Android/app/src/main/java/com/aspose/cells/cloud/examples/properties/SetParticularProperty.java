package com.aspose.cells.cloud.examples.properties;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class SetParticularProperty {

	public static void execute(Context context) throws IOException {
		//ExStart: set-particular-property
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample7.xlsx";
			String output = "sample2.xlsx";


			File inputFile = Utils.stream2file("sample7","xlsx", context.getResources().openRawResource(R.raw.sample7));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);

			String propertyName = "Author";
			com.aspose.cells.model.CellsDocumentProperty body = new com.aspose.cells.model.CellsDocumentProperty();
			body.setName("AsposeAuthor");
			body.setValue("Aspose Plugin Developer");
			body.setBuiltIn("false");

			cellsApi.PutDocumentProperty(input, propertyName, Utils.STORAGE, Utils.FOLDER, body);
			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);
			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: set-particular-property
	}

}