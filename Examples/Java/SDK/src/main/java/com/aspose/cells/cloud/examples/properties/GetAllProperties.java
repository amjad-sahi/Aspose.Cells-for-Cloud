package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class GetAllProperties {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Common.getPath(GetAllProperties.class, input);

        Common.getStorageSdk().PutCreate(
                input,
                Common.STORAGE,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.CellsDocumentPropertiesResponse apiResponse
                = Common.getCellsSdk().GetDocumentProperties(
                        input,
                        Common.STORAGE,
                        null
                );

        for (com.aspose.cells.model.CellsDocumentProperty docProperty : apiResponse.getDocumentProperties().getDocumentPropertyList()) {
            System.out.println("Name: " + docProperty.getName());
            System.out.println("Value: " + docProperty.getValue());
            System.out.println("BuiltIn: " + docProperty.getBuiltIn());
            System.out.println("");
        }

    }

}
