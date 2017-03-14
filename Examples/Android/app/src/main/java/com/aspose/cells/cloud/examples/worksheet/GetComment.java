package com.aspose.cells.cloud.examples.worksheet;


import com.aspose.cells.api.CellsApi;
import com.aspose.cells.cloud.examples.Configuration;
import com.aspose.cells.cloud.examples.Utils;
import com.aspose.storage.api.StorageApi;
import java.io.IOException;
import java.io.File;
import com.aspose.cells.cloud.examples.R;
import android.content.Context;


public class GetComment {

	public static void execute(Context context) throws IOException {
		//ExStart: get-comment-from-worksheet
		try {
			// Instantiate Aspose Storage API SDK
			StorageApi storageApi = new StorageApi(Configuration.apiKey, Configuration.appSID, true);

			// Instantiate Aspose Words API SDK
			CellsApi cellsApi = new CellsApi(Configuration.apiKey, Configuration.appSID, true);
			String input = "Sample1.xlsx";
			File inputFile = Utils.stream2file("sample1","xlsx", context.getResources().openRawResource(R.raw.sample1));
			String sheet = "Sheet1";
			String cell = "A1";

			storageApi.PutCreate(input, null, Utils.STORAGE, inputFile);

			com.aspose.cells.model.CommentResponse r = cellsApi.GetWorkSheetComment("Sample1.xlsx",
					sheet, cell, Utils.STORAGE, null);

			System.out.println("Comment: " + r.getComment().getNote());
		}

		catch (Exception e) {
			e.printStackTrace();
		}
		//ExEnd: get-comment-from-worksheet
	}
}