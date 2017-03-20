package com.aspose.cells.cloud.examples.pivottables;

import java.nio.file.Path;

import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.cells.model.PivotItem;
import com.aspose.cells.model.PivotTable;
import com.aspose.cells.model.PivotTableResponse;
import com.aspose.storage.api.StorageApi;

public class GetWorksheetPivotInfoByIndex {

    public static void main(String[] args) {

        // ExStart: 1
        String fileName = "Sample_Pivot_Table_Example.xls";
        String sheetName = "Sheet2";
        int pivottableIndex = 0;
        String storage = "";
        String folder = "";
        Path inputFile = Utils.getPath(GetWorksheetPivotInfoByIndex.class, fileName);

        try {
            // Instantiate Aspose Storage API SDK
            StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

            // Instantiate Aspose Words API SDK
            CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
            // Upload source file to aspose cloud storage
            storageApi.PutCreate(fileName, "", "", inputFile.toFile());

            // Invoke Aspose.Cells Cloud SDK API to get worksheet pivot table
            // informations by index
            PivotTableResponse apiResponse = cellsApi.GetWorksheetPivotTable(fileName, sheetName, pivottableIndex,
                    storage, folder);

            if (apiResponse != null && apiResponse.getStatus().equals("OK")) {
                PivotTable pivotTable = apiResponse.getPivotTable();
                System.out.println("Name" + pivotTable.getPivotTableStyleName());
                for (PivotItem item : pivotTable.getBaseFields().get(0).getPivotItems()) {
                    System.out.println("Pivot Item Name :: " + item.getName());
                    System.out.println("Pivot Item Value :: " + item.getValue());
                }
                System.out.println("Delete Row from a Worksheet, Done!");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        // ExEnd: 1
    }

}
