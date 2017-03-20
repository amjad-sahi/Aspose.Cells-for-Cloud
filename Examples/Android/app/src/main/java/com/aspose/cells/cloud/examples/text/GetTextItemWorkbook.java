package com.aspose.cells.cloud.examples.text;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;

import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetTextItemWorkbook {

	public static void execute(Context context) throws IOException {
		//ExStart: get-text-item-workbook

		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));

			storageApi.PutCreate(input, null, null, inputFile);

			com.aspose.cells.model.TextItemsResponse apiResponse = cellsApi.GetWorkBookTextItems(input, null, null);

			for (com.aspose.cells.model.TextItem item : apiResponse.getTextItems().getTextItemList()) {
				System.out.println("Text: " + item.getText());
				System.out.println("Href: " + item.getLink().getHref());
				System.out.println("");
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-text-item-workbook
	}

}