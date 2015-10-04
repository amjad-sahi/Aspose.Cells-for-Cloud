package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import com.aspose.cells.model.ResponseMessage;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertWorkbookWithAdditionalSettings {

    public static void main(String... args) throws IOException {
        Path inputFile = Common.getPath(ConvertWorkbookWithAdditionalSettings.class, "Workbook1.xlsx");
        Path outputFile = Common.getPath(ConvertWorkbookWithAdditionalSettings.class, "Workbook1.pdf");

        String format = "pdf";
        String password = "";
        String outPath = "";

        String xml = "<PdfSaveOptions>"
                + "<SaveFormat>pdf</SaveFormat>"
                + "<FileName>" + inputFile.getFileName().toString() + "</FileName>"
                + "<ImageCompression>Jpeg</ImageCompression>"
                + "<JpegQuality>70</JpegQuality>"
                + "<TextCompression>Flate</TextCompression>"
                + "</PdfSaveOptions>";

        ResponseMessage cr = Common.getCellsSdk().PutConvertWorkBook(
                format,
                password,
                outPath,
                inputFile.toFile(),
                xml.getBytes("UTF-8")
        );

        Files.copy(cr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
