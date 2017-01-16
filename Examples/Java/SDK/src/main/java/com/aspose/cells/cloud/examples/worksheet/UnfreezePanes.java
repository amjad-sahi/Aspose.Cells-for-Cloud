package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UnfreezePanes {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			Path inputFile = Utils.getPath(UnfreezePanes.class, "Sample1.xlsx");
			Path outputFile = Utils.getPath(UnfreezePanes.class, "Sample2.xlsx");

			storageApi.PutCreate(inputFile.getFileName().toString(), null, Utils.STORAGE, inputFile.toFile());

			String sheetName = "Sheet1";
			Integer row = 1;
			Integer column = 1;
			Integer freezedRows = 1;
			Integer freezedColumns = 1;

			cellsApi.DeleteWorksheetFreezePanes(inputFile.getFileName().toString(), sheetName, row, column, freezedRows,
					freezedColumns, Utils.FOLDER, Utils.STORAGE);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(inputFile.getFileName().toString(),
					null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}
