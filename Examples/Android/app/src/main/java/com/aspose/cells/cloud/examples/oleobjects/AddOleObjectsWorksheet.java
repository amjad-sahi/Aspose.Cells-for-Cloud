package com.aspose.cells.cloud.examples.oleobjects;


import android.content.Context;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.R;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.File;
import java.io.IOException;


public class AddOleObjectsWorksheet {

	public static void execute(Context context) throws IOException {
		//ExStart: add-ole-objects-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

			String input = "sample1.xlsx";
			String sheetName = "Sheet1";
			String output = "sample2.xlsx";
			String sourceFileName = "ole.docx";
			String imageFileName = "picture.png";



			File inputFile = Utils.stream2file("sample5","xlsx", context.getResources().openRawResource(R.raw.sample5));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));
			File sourceFile = Utils.stream2file("ole","docx", context.getResources().openRawResource(R.raw.ole));
			File imageFile = Utils.stream2file("picture","png", context.getResources().openRawResource(R.raw.picture));


			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);
			storageApi.PutCreate(sourceFileName, null, Utils.STORAGE, sourceFile);
			storageApi.PutCreate(imageFileName, null, Utils.STORAGE, imageFile);

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

			Utils.copyInputStreamToFile(sr.getInputStream(),outputFile);

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		
		//ExEnd: add-ole-objects-worksheet

	}

}