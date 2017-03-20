package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetParticularProperty {

	public static void execute(Context context) throws IOException {
		//ExStart: get-particular-property
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			String propertyName = "Author";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);

			com.aspose.cells.model.CellsDocumentPropertyResponse apiResponse = cellsApi.GetDocumentProperty(input,
					propertyName, Utils.STORAGE, null);

			System.out.println(" Author : " + apiResponse.getDocumentProperty().getValue());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-particular-property

	}

}