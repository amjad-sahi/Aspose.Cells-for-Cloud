package com.aspose.cells.cloud.examples.oleobjects;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class AddOleObjectsWorksheet {

	public static void main(String... args) throws IOException {
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String input = "sample1.xlsx";
			Path inputFile = Utils.getPath(AddOleObjectsWorksheet.class, input);
			String sheetName = "Sheet1";
			String output = "sample2.xlsx";
			Path outputFile = Utils.getPath(AddOleObjectsWorksheet.class, output);
			String sourceFileName = "ole.docx";
			Path sourceFile = Utils.getPath(AddOleObjectsWorksheet.class, sourceFileName);
			String imageFileName = "picture.png";
			Path imageFile = Utils.getPath(AddOleObjectsWorksheet.class, imageFileName);

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile.toFile());

			storageApi.PutCreate(sourceFileName, null, Utils.STORAGE, sourceFile.toFile());

			storageApi.PutCreate(imageFileName, null, Utils.STORAGE, imageFile.toFile());

			Integer upperLeftRow = null;
			Integer upperLeftColumn = null;
			Integer height = 200;
			Integer width = 200;
			String oleFile = sourceFileName;

			com.aspose.cells.model.OleObject body = new com.aspose.cells.model.OleObject();
			body.setSourceFullName(sourceFileName);
			body.setImageSourceFullName(imageFileName);
			body.setUpperLeftRow(15);
			body.setUpperLeftColumn(5);
			body.setTop(10);
			body.setBottom(10);
			body.setLeft(10);
			body.setHeight(200);
			body.setWidth(200);
			body.setIsAutoSize(true);

			cellsApi.PutWorksheetOleObject(input, sheetName, upperLeftRow, upperLeftColumn, height, width, oleFile,
					imageFileName, Utils.STORAGE, Utils.FOLDER, body);

			com.aspose.storage.model.ResponseMessage sr = storageApi.GetDownload(input, null, Utils.STORAGE);

			Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
