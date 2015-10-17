package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetParticularProperty {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetParticularProperty.class, input);
        String propertyName = "Author";
        

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.CellsDocumentPropertyResponse  apiResponse
                = Utils.getCellsSdk().GetDocumentProperty(
                        input,
                        propertyName,
                        Utils.STORAGE,
                        null
                );

        System.out.println(" Author : " + apiResponse.getDocumentProperty().getValue());

    }

}
