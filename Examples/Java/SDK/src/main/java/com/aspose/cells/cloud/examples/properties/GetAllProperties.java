package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetAllProperties {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			Path inputFile = Utils.getPath(GetAllProperties.class, input);

			storageApi.PutCreate(input, Utils.STORAGE, null, inputFile.toFile());

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

	}

}
