package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

public class ConvertWorksheetToImage {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(ConvertWorksheetToImage.class, input);
        String output = "output.png";
        Path outputFile = Utils.getPath(ConvertWorksheetToImage.class, output);
        
        String sheetName = "Sheet1";
        String format = "png";
        Integer verticalResolution = null;
        Integer horizontalResolution = null;
        
        com.aspose.cells.model.ResponseMessage apiResponse
                = Utils.getCellsSdk().GetWorkSheetWithFormat(
                        input, 
                        sheetName, 
                        format, 
                        verticalResolution, 
                        horizontalResolution, 
                        Utils.STORAGE,
                        Utils.FOLDER
                );

        Files.copy(apiResponse.getInputStream(), outputFile, StandardCopyOption.REPLACE_EXISTING);
    }
}
