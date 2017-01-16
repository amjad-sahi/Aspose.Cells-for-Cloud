package com.aspose.cells.cloud.examples.cells;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ChangeCellStyleWorksheet {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			Path inputFile = Utils.getPath(ChangeCellStyleWorksheet.class, input);
			String output = "sample2.xlsx";
			Path outputFile = Utils.getPath(ChangeCellStyleWorksheet.class, output);

			String sheetName = "Sheet1";
			String cellName = "A2";

			com.aspose.cells.model.Style body = new com.aspose.cells.model.Style();
			com.aspose.cells.model.Font font = new com.aspose.cells.model.Font();
			font.setName("Calibri");
			font.setSize(40);
			body.setFont(font);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			cellsApi.PostUpdateWorksheetCellStyle(input, sheetName, cellName, Utils.STORAGE, Utils.FOLDER,
					body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
