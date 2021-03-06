package com.aspose.cells.cloud.examples.workbook;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class ConvertWorkbookToAnotherFormatWithoutStorage {

	public static void execute(Context context) throws IOException {

		//ExStart: convert-workbook-to-different-format-without-storage
		try {
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			File outputFile = Utils.stream2file("sample2","xlsx", context.getResources().openRawResource(R.raw.sample2));

			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String format = "pdf";
			String password = "";
			String outPath = "";

			String xml = "<PdfSaveOptions>" + "<SaveFormat>pdf</SaveFormat>" + "<FileName>"
					+ "sample1.xlsx" + "</FileName>" + "<ImageCompression>Jpeg</ImageCompression>"
					+ "<JpegQuality>70</JpegQuality>" + "<TextCompression>Flate</TextCompression>"
					+ "</PdfSaveOptions>";

			ResponseMessage cr = cellsApi.PutConvertWorkBook(format, password, outPath,inputFile,
					xml.getBytes("UTF-8"));

			Utils.copyInputStreamToFile(cr.getInputStream(),outputFile);

		} catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: convert-workbook-to-different-format-without-storage
	}
}