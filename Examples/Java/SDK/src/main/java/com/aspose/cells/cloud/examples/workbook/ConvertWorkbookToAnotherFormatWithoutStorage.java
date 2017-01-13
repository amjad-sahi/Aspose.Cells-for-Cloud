package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertWorkbookToAnotherFormatWithoutStorage {

	public static void main(String... args) throws IOException {

		try {
			Path inputFile = Utils.getPath(ConvertWorkbookToAnotherFormatWithoutStorage.class, "Workbook1.xlsx");
			Path outputFile = Utils.getPath(ConvertWorkbookToAnotherFormatWithoutStorage.class, "Workbook1.pdf");

			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String format = "pdf";
			String password = "";
			String outPath = "";

			String xml = "<PdfSaveOptions>" + "<SaveFormat>pdf</SaveFormat>" + "<FileName>"
					+ inputFile.getFileName().toString() + "</FileName>" + "<ImageCompression>Jpeg</ImageCompression>"
					+ "<JpegQuality>70</JpegQuality>" + "<TextCompression>Flate</TextCompression>"
					+ "</PdfSaveOptions>";

			ResponseMessage cr = cellsApi.PutConvertWorkBook(format, password, outPath, inputFile.toFile(),
					xml.getBytes("UTF-8"));

			Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
