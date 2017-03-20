package com.aspose.cells.cloud.examples.workbook;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.storage.api.StorageApi;

public class ConvertWorkbookWithAdditionalSettings {

    public static void main(String... args) throws IOException {
        // ExStart: convert-workbook-additional-settings
        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);
            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);

            Path inputFile = Utils.getPath(ConvertWorkbookWithAdditionalSettings.class, "Workbook1.xlsx");
            Path outputFile = Utils.getPath(ConvertWorkbookWithAdditionalSettings.class, "Workbook1.pdf");

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
        // ExEnd: convert-workbook-additional-settings
    }
}