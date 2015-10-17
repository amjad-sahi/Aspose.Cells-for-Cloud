package com.aspose.cells.cloud.examples.hyperlinks;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class UpdateHyperlinkWorksheet {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(UpdateHyperlinkWorksheet.class, input);
        String output = "sample2.xlsx";
        Path outputFile = Utils.getPath(UpdateHyperlinkWorksheet.class, output);

        String sheetName = "Sheet1";
        Integer hyperlinkIndex = 0;
        com.aspose.cells.model.Hyperlink body = new com.aspose.cells.model.Hyperlink();
        body.setAddress("http://www.aspose.com/cloud/total-api.aspx");
        body.setTextToDisplay("Aspose Cloud APIs");
        
        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        Utils.getCellsSdk().PostWorkSheetHyperlink(
                input, 
                sheetName, 
                hyperlinkIndex, 
                Utils.STORAGE,
                Utils.FOLDER,
                body
        );
                

        com.aspose.storage.model.ResponseMessage sr = Utils.getStorageSdk().GetDownload(
                input,
                null,
                Utils.STORAGE
        );

        Files.copy(sr.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);

    }

}
