package com.aspose.cells.cloud.examples.properties;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class GetAllProperties {

    public static void main(String... args) throws IOException {
        String input = "sample1.xlsx";
        Path inputFile = Utils.getPath(GetAllProperties.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                Utils.STORAGE,
                null,
                inputFile.toFile()
        );

        com.aspose.cells.model.CellsDocumentPropertiesResponse apiResponse
                = Utils.getCellsSdk().GetDocumentProperties(
                        input,
                        Utils.STORAGE,
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
