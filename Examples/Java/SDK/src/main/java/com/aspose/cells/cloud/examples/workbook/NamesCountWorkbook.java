package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Utils;
import java.io.IOException;
import java.nio.file.Path;

public class NamesCountWorkbook {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Utils.getPath(NamesCountWorkbook.class, input);

        Utils.getStorageSdk().PutCreate(
                input,
                null,
                Utils.STORAGE,
                inputFile.toFile()
        );
        
        com.aspose.cells.model.NamesResponse np = Utils.getCellsSdk().GetWorkBookNames(input, null, null);
        
        System.out.println(np.getNames().getCount());
        
    }
}
