package com.aspose.cells.cloud.examples.worksheet;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class CalculateFormula {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(CalculateFormula.class, input);
        String sheet = "Sheet1";
        String formula = "SUM(A1:A10)";

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );

        com.aspose.cells.model.SingleValueResponse r
                = Utils.getCellsSdk().GetWorkSheetCalculateFormula(
                        inputFile.getFileName().toString(),
                        sheet,
                        formula,
                        Utils.STORAGE,
                        null
                );

        System.out.println("Result: " + r.getValue().getValue());
    }
}
