package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetParticularProperty {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			Path inputFile = Utils.getPath(GetParticularProperty.class, input);
			String propertyName = "Author";

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile.toFile());

			com.aspose.cells.model.CellsDocumentPropertyResponse apiResponse = cellsApi.GetDocumentProperty(input,
					propertyName, Utils.STORAGE, null);

			System.out.println(" Author : " + apiResponse.getDocumentProperty().getValue());
		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
