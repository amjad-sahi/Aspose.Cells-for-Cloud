package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(UpdateHyperlinkWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Common.getPath(UpdateHyperlinkWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer hyperlinkIndex = 0;
        com.aspose.cells.model.Hyperlink body = new com.aspose.cells.model.Hyperlink();
        body.setAddress("http://www.aspose.com/cloud/total-api.aspx");
        body.setTextToDisplay("Aspose Cloud APIs");
        
        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );

        Common.getCellsSdk().PostWorkSheetHyperlink(
                input, 
                sheetName, 
                hyperlinkIndex, 
                Common.STORAGE, 
                Common.FOLDER, 
                body
        );
                

        com.aspose.storage.model.ResponseMessage sr = Common.getStorageSdk().GetDownload(
                input,
                null,
                Common.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
