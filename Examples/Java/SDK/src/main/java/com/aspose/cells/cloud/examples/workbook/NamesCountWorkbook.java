package com.aspose.cells.cloud.examples.workbook;

import com.aspose.cells.cloud.examples.Common;
import java.io.IOException;
import java.nio.file.Path;

public class NamesCountWorkbook {

    public static void main(String... args) throws IOException {
        String input = "Sample1.xlsx";
        Path inputFile = Common.getPath(NamesCountWorkbook.class, input);

        Common.getStorageSdk().PutCreate(
                input,
                null,
                Common.STORAGE,
                inputFile.toFile()
        );
        
        com.aspose.cells.model.NamesResponse np = Common.getCellsSdk().GetWorkBookNames(input, null, null);
        
        System.out.println(np.getNames().getCount());
        
    }
}
