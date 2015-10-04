package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetParticularProperty {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetParticularProperty.class, input);
        String propertyName = "Author";
        

        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.CellsDocumentPropertyResponse  apiResponse
                = Common.getCellsSdk().GetDocumentProperty(
                        input,
                        propertyName,
                        Common.STORAGE,
                        null
                );

        System.out.println(" Author : " + apiResponse.getDocumentProperty().getValue());

    }

}
