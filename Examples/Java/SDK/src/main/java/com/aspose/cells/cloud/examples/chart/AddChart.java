package com.aspose.cells.cloud.examples.chart;

import java.io.IOException;
import java.nio.file.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.ChartsResponse;
import com.aspose.storage.api.StorageApi;

public class AddChart {

    public static void main(String... args) throws IOException {
        // For complete examples and data files, please go to
        // https://github.com/aspose-cells/Aspose.Cells-for-Cloud
        // ExStart: 1
        
        String fileName = "Sample_Test_Book.xls";
        String sheetName = "Sheet6";
        String chartType = "bar";
        int upperLeftRow = 12;
        int upperLeftColumn = 12;
        int lowerRightRow = 20;
        int lowerRightColumn = 20;
        String area = "A1:A3";
        Boolean isVertical = false;
        String categoryData = "";
        Boolean isAutoGetSerialName = true;
        String title = "SalesState";
        String storage = "";
        String folder = "";
        Path inputFile = Utils.getPath(AddChart.class, "Sample.xlsx");

        try {
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            // Upload source file to aspose cloud storage
            storageApi.PutCreate(fileName, "", "", inputFile.toFile());

            // Invoke Aspose.Cells Cloud SDK API to add chart in worksheet
            ChartsResponse apiResponse = cellsApi.PutWorksheetAddChart(fileName, sheetName, chartType, upperLeftRow,
                    upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData,
                    isAutoGetSerialName, title, storage, folder);

            if (apiResponse != null && apiResponse.getStatus().equals("OK")) {
                System.out.println("Add a Chart in a Worksheet, Done!");

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        // ExEnd: 1

    }
}
