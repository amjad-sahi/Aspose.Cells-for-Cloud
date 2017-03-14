package com.aspose.cells.cloud.examples.properties;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetAllProperties {

	public static void execute(Context context) throws IOException {
		//ExStart: get-all-document-properties
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";

			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile);

			com.aspose.cells.model.CellsDocumentPropertiesResponse apiResponse = cellsApi.GetDocumentProperties(input,
					Utils.STORAGE, null);

			for (com.aspose.cells.model.CellsDocumentProperty docProperty : apiResponse.getDocumentProperties()
					.getDocumentPropertyList()) {
				System.out.println("Name: " + docProperty.getName());
				System.out.println("Value: " + docProperty.getValue());
				System.out.println("BuiltIn: " + docProperty.getBuiltIn());
				System.out.println("");
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-all-document-properties

	}

}