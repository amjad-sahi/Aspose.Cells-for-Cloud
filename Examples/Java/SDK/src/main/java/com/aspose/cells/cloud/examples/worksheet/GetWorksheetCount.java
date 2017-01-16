package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Path;

public class GetWorksheetCount {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			Path inputFile = Utils.getPath(GetWorksheetCount.class, "Sample.xlsx");

			storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

			com.aspose.cells.model.WorksheetsResponse wr = cellsApi.GetWorkSheets(inputFile.getFileName().toString(),
					Utils.STORAGE, null);

			System.out.println("Count: " + wr.getWorksheets().getWorksheetList().size());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
