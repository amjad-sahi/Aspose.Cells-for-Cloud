/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aspose.cells.api;

import com.aspose.storage.api.StorageApi;
import com.aspose.client.ApiException;
import com.aspose.cells.model.AutoFitterOptions;
import com.aspose.cells.model.AutoShapesResponse;
import com.aspose.cells.model.BarcodeResponseList;
import com.aspose.cells.model.CellResponse;
import com.aspose.cells.model.CellsDocumentPropertiesResponse;
import com.aspose.cells.model.CellsDocumentProperty;
import com.aspose.cells.model.CellsDocumentPropertyResponse;
import com.aspose.cells.model.CellsResponse;
import com.aspose.cells.model.ChartAreaResponse;
import com.aspose.cells.model.ChartsResponse;
import com.aspose.cells.model.ColumnResponse;
import com.aspose.cells.model.ColumnsResponse;
import com.aspose.cells.model.Comment;
import com.aspose.cells.model.CommentResponse;
import com.aspose.cells.model.CommentsResponse;
import com.aspose.cells.model.DataSorter;
import com.aspose.cells.model.FillFormatResponse;
import com.aspose.cells.model.Hyperlink;
import com.aspose.cells.model.HyperlinkResponse;
import com.aspose.cells.model.HyperlinksResponse;
import com.aspose.cells.model.ImportOption;
import com.aspose.cells.model.Legend;
import com.aspose.cells.model.LegendResponse;
import com.aspose.cells.model.LineResponse;
import com.aspose.cells.model.MergedCellResponse;
import com.aspose.cells.model.MergedCellsResponse;
import com.aspose.cells.model.NameResponse;
import com.aspose.cells.model.NamesResponse;
import com.aspose.cells.model.OleObject;
import com.aspose.cells.model.OleObjectResponse;
import com.aspose.cells.model.OleObjectsResponse;
import com.aspose.cells.model.PasswordRequest;
import com.aspose.cells.model.Picture;
import com.aspose.cells.model.PictureResponse;
import com.aspose.cells.model.PicturesResponse;
import com.aspose.cells.model.ProtectSheetParameter;
import com.aspose.cells.model.ResponseMessage;
import com.aspose.cells.model.RowResponse;
import com.aspose.cells.model.RowsResponse;
import com.aspose.cells.model.SaaSposeResponse;
import com.aspose.cells.model.SaveOptions;
import com.aspose.cells.model.SaveResponse;
import com.aspose.cells.model.SingleValueResponse;
import com.aspose.cells.model.SplitResultResponse;
import com.aspose.cells.model.Style;
import com.aspose.cells.model.StyleResponse;
import com.aspose.cells.model.TextItemsResponse;
import com.aspose.cells.model.Title;
import com.aspose.cells.model.TitleResponse;
import com.aspose.cells.model.ValidationResponse;
import com.aspose.cells.model.ValidationsResponse;
import com.aspose.cells.model.WorkbookEncryptionRequest;
import com.aspose.cells.model.WorkbookProtectionRequest;
import com.aspose.cells.model.WorkbookReplaceResponse;
import com.aspose.cells.model.WorkbookResponse;
import com.aspose.cells.model.Worksheet;
import com.aspose.cells.model.WorksheetMovingRequest;
import com.aspose.cells.model.WorksheetReplaceResponse;
import com.aspose.cells.model.WorksheetResponse;
import com.aspose.cells.model.WorksheetsResponse;
import com.aspose.client.ApiInvoker;
import java.io.File;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author SQL
 */
public class CellsApiTest {

	CellsApi cellsApi;
	StorageApi storageApi;
	// Please get the appSID and apiKey from https://cloud.aspose.com
	String appSID = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx";
	String apiKey = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

	public CellsApiTest() {
	}

	@BeforeClass
	public static void setUpClass() {
	}

	@AfterClass
	public static void tearDownClass() {
	}

	@Before
	public void setUp() {
		cellsApi = new CellsApi();
		
		cellsApi.setBasePath("http://api.aspose.com/v1.1");
		cellsApi.getInvoker().addDefaultHeader("apiKey", apiKey);
		cellsApi.getInvoker().addDefaultHeader("appSID", appSID);

//		storageApi = new StorageApi();
//		storageApi.setBasePath("http://api.aspose.com/v1.1");
//		storageApi.getInvoker().addDefaultHeader("apiKey", apiKey);
//		storageApi.getInvoker().addDefaultHeader("appSID", appSID);
//
//		try{
//		System.out.println(getClass().getResource("/test_cells.xlsx").toURI());
//		//storageApi.PutCopy("test_cells.xlsx", "", "", "", "", new File(getClass().getResource("/test_cells.xlsx").toURI()));
//		//storageApi.PutCopy("test_cells.xlsx", "", "", "", "", new File(getClass().getResource("/test_cells.xlsx").toURI()));
//		
//		}catch(java.net.URISyntaxException uriExp){
//			System.out.println("uriExp:"+uriExp);
//		}

	}

	@After
	public void tearDown() {
	}

	/**
	 * Test of DeleteWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetColumns() {
		System.out.println("DeleteWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer columnIndex = 1;
		Integer columns = 1;
		Boolean updateReference = false;
		String storage = "";
		String folder = "";
		try {
			
			ColumnsResponse result = cellsApi.DeleteWorksheetColumns(name, sheetName, columnIndex, columns, updateReference, storage, folder);
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetRow method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetRow() {
		System.out.println("DeleteWorksheetRow");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer rowIndex = 1;
		String storage = "";
		String folder = "";
		try {			
			SaaSposeResponse result = cellsApi.DeleteWorksheetRow(name, sheetName, rowIndex, storage, folder);
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetRows() {
		System.out.println("DeleteWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startrow = 1;
		Integer totalRows = 1;
		Boolean updateReference = true;
		String storage = "";
		String folder = "";
		try {
			SaaSposeResponse result = cellsApi.DeleteWorksheetRows(name, sheetName, startrow, totalRows, updateReference, storage, folder);
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetCell method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetCell() {
		System.out.println("GetWorksheetCell");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellOrMethodName = "a1";
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetCell(name, sheetName, cellOrMethodName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetCells method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetCells() {
		System.out.println("GetWorksheetCells");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer offest = 1;
		Integer count = 1;
		String storage = "";
		String folder = "";
		try {
			
			CellsResponse result = cellsApi.GetWorksheetCells(name, sheetName, offest, count, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetCellStyle method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetCellStyle() {
		System.out.println("GetWorksheetCellStyle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "a1";
		String storage = "";
		String folder = "";
		try {
			
			StyleResponse result = cellsApi.GetWorksheetCellStyle(name, sheetName, cellName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetColumn method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetColumn() {
		System.out.println("GetWorksheetColumn");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer columnIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			ColumnResponse result = cellsApi.GetWorksheetColumn(name, sheetName, columnIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetColumns() {
		System.out.println("GetWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			ColumnsResponse result = cellsApi.GetWorksheetColumns(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetRow method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetRow() {
		System.out.println("GetWorksheetRow");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer rowIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			RowResponse result = cellsApi.GetWorksheetRow(name, sheetName, rowIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetRows() {
		System.out.println("GetWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			RowsResponse result = cellsApi.GetWorksheetRows(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostClearContents method, of class CellsApi.
	 */
	@Test
	public void testPostClearContents() {
		System.out.println("PostClearContents");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String range = "";
		Integer startRow = 1;
		Integer startColumn = 1;
		Integer endRow = 1;
		Integer endColumn = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostClearContents(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostClearFormats method, of class CellsApi.
	 */
	@Test
	public void testPostClearFormats() {
		System.out.println("PostClearFormats");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String range = "A1:A2";
		Integer startRow = 0;
		Integer startColumn = 0;
		Integer endRow = 1;
		Integer endColumn = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostClearFormats(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostCopyCellIntoCell method, of class CellsApi.
	 */
	@Test
	public void testPostCopyCellIntoCell() {
		System.out.println("PostCopyCellIntoCell");
		String name = "test_cells.xlsx";
		String destCellName = "A60";
		String sheetName = "Sheet1";
		String worksheet = "Sheet1";
		String cellname = "a1";
		Integer row = 1;
		Integer column = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostCopyCellIntoCell(name, destCellName, sheetName, worksheet, cellname, row, column, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostCopyWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPostCopyWorksheetColumns() {
		System.out.println("PostCopyWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer sourceColumnIndex = 1;
		Integer destinationColumnIndex = 2;
		Integer columnNumber = 1;
		String worksheet = "2";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostCopyWorksheetColumns(name, sheetName, sourceColumnIndex, destinationColumnIndex, columnNumber, worksheet, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostCopyWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostCopyWorksheetRows() {
		System.out.println("PostCopyWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer sourceRowIndex = 1;
		Integer destinationRowIndex = 1;
		Integer rowNumber = 1;
		String worksheet = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostCopyWorksheetRows(name, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, worksheet, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostGroupWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPostGroupWorksheetColumns() {
		System.out.println("PostGroupWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer firstIndex = 1;
		Integer lastIndex = 1;
		Boolean hide = false;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostGroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, hide, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostGroupWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostGroupWorksheetRows() {
		System.out.println("PostGroupWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer firstIndex = 1;
		Integer lastIndex = 1;
		Boolean hide = false;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostGroupWorksheetRows(name, sheetName, firstIndex, lastIndex, hide, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostHideWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPostHideWorksheetColumns() {
		System.out.println("PostHideWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startColumn = 1;
		Integer totalColumns = 5;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostHideWorksheetColumns(name, sheetName, startColumn, totalColumns, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostHideWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostHideWorksheetRows() {
		System.out.println("PostHideWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startrow = 1;
		Integer totalRows = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostHideWorksheetRows(name, sheetName, startrow, totalRows, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostSetCellHtmlString method, of class CellsApi.
	 */
//	@Test
//	public void testPostSetCellHtmlString() {
//		System.out.println("PostSetCellHtmlString");
//		String name = "test_cells.xlsx";
//		String sheetName = "Sheet1";
//		String cellName = "a1";
//		String storage = "";
//		String folder = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_slide.pptx").toURI());
//			CellResponse result = cellsApi.PostSetCellHtmlString(name, sheetName, cellName, storage, folder, file);
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of PostSetCellRangeValue method, of class CellsApi.
	 */
	@Test
	public void testPostSetCellRangeValue() {
		System.out.println("PostSetCellRangeValue");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellarea = "a1";
		String value = "a1:a4";
		String type = "text";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostSetCellRangeValue(name, sheetName, cellarea, value, type, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostSetWorksheetColumnWidth method, of class CellsApi.
	 */
	@Test
	public void testPostSetWorksheetColumnWidth() {
		System.out.println("PostSetWorksheetColumnWidth");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer columnIndex = 1;
		Double width = 1.0;
		String storage = "";
		String folder = "";
		try {
			
			ColumnResponse result = cellsApi.PostSetWorksheetColumnWidth(name, sheetName, columnIndex, width, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUngroupWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPostUngroupWorksheetColumns() {
		System.out.println("PostUngroupWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer firstIndex = 1;
		Integer lastIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostUngroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUngroupWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostUngroupWorksheetRows() {
		System.out.println("PostUngroupWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer firstIndex = 1;
		Integer lastIndex = 1;
		Boolean isAll = false;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostUngroupWorksheetRows(name, sheetName, firstIndex, lastIndex, isAll, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUnhideWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPostUnhideWorksheetColumns() {
		System.out.println("PostUnhideWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startcolumn = 1;
		Integer totalColumns = 1;
		Double width = 1.0;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostUnhideWorksheetColumns(name, sheetName, startcolumn, totalColumns, width, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUnhideWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostUnhideWorksheetRows() {
		System.out.println("PostUnhideWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startrow = 1;
		Integer totalRows = 1;
		Double height = 1.0;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostUnhideWorksheetRows(name, sheetName, startrow, totalRows, height, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUpdateWorksheetCellStyle method, of class CellsApi.
	 */
	@Test
	public void testPostUpdateWorksheetCellStyle() {
		System.out.println("PostUpdateWorksheetCellStyle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "a1";
		String storage = "";
		String folder = "";
		Style body = new Style();
		body.setName("New");
		body.setNumber(1);
		try {
			
			StyleResponse result = cellsApi.PostUpdateWorksheetCellStyle(name, sheetName, cellName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUpdateWorksheetRangeStyle method, of class CellsApi.
	 */
	@Test
	public void testPostUpdateWorksheetRangeStyle() {
		System.out.println("PostUpdateWorksheetRangeStyle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String range = "a1:d1";
		String storage = "";
		String folder = "";
		Style body = new Style();
		try {
			
			SaaSposeResponse result = cellsApi.PostUpdateWorksheetRangeStyle(name, sheetName, range, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUpdateWorksheetRow method, of class CellsApi.
	 */
	@Test
	public void testPostUpdateWorksheetRow() {
		System.out.println("PostUpdateWorksheetRow");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer rowIndex = 1;
		Double height = 1.0;
		String storage = "";
		String folder = "";
		try {
			
			RowResponse result = cellsApi.PostUpdateWorksheetRow(name, sheetName, rowIndex, height, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetCellSetValue method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetCellSetValue() {
		System.out.println("PostWorksheetCellSetValue");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "a1";
		String value = "1";
		String type = "text";
		String formula = "sum(b1:b2)";
		String storage = "";
		String folder = "";
		try {
			
			CellResponse result = cellsApi.PostWorksheetCellSetValue(name, sheetName, cellName, value, type, formula, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetMerge method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetMerge() {
		System.out.println("PostWorksheetMerge");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startRow = 1;
		Integer startColumn = 1;
		Integer totalRows = 2;
		Integer totalColumns = 2;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostWorksheetMerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetUnmerge method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetUnmerge() {
		System.out.println("PostWorksheetUnmerge");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startRow = 1;
		Integer startColumn = 1;
		Integer totalRows = 2;
		Integer totalColumns = 2;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostWorksheetUnmerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutInsertWorksheetColumns method, of class CellsApi.
	 */
	@Test
	public void testPutInsertWorksheetColumns() {
		System.out.println("PutInsertWorksheetColumns");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer columnIndex = 1;
		Integer columns = 1;
		Boolean updateReference = false;
		String storage = "";
		String folder = "";
		try {
			
			ColumnsResponse result = cellsApi.PutInsertWorksheetColumns(name, sheetName, columnIndex, columns, updateReference, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutInsertWorksheetRow method, of class CellsApi.
	 */
	@Test
	public void testPutInsertWorksheetRow() {
		System.out.println("PutInsertWorksheetRow");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer rowIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			RowResponse result = cellsApi.PutInsertWorksheetRow(name, sheetName, rowIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutInsertWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPutInsertWorksheetRows() {
		System.out.println("PutInsertWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startrow = 1;
		Integer totalRows = 1;
		Boolean updateReference = false;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PutInsertWorksheetRows(name, sheetName, startrow, totalRows, updateReference, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetAutoshape method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetAutoshape() {
		System.out.println("GetWorksheetAutoshape");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer autoshapeNumber = 1;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetAutoshape(name, sheetName, autoshapeNumber, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetAutoshapes method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetAutoshapes() {
		System.out.println("GetWorksheetAutoshapes");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			AutoShapesResponse result = cellsApi.GetWorksheetAutoshapes(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetAutoshapeWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetAutoshapeWithFormat() {
		System.out.println("GetWorksheetAutoshapeWithFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer autoshapeNumber = 1;
		String format = "text";
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetAutoshapeWithFormat(name, sheetName, autoshapeNumber, format, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetExtractBarcodes method, of class CellsApi.
	 */
	@Test
	public void testGetExtractBarcodes() {
		System.out.println("GetExtractBarcodes");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer pictureNumber = 1;
		String storage = "";
		String folder = "";
		try {
			
			BarcodeResponseList result = cellsApi.GetExtractBarcodes(name, sheetName, pictureNumber, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetChartArea method, of class CellsApi.
	 */
	@Test
	public void testGetChartArea() {
		System.out.println("GetChartArea");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 0;
		String storage = "";
		String folder = "";
		try {
			
			ChartAreaResponse result = cellsApi.GetChartArea(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetChartAreaBorder method, of class CellsApi.
	 */
	@Test
	public void testGetChartAreaBorder() {
		System.out.println("GetChartAreaBorder");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			LineResponse result = cellsApi.GetChartAreaBorder(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetChartAreaFillFormat method, of class CellsApi.
	 */
	@Test
	public void testGetChartAreaFillFormat() {
		System.out.println("GetChartAreaFillFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			FillFormatResponse result = cellsApi.GetChartAreaFillFormat(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetChartLegend method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetChartLegend() {
		System.out.println("DeleteWorksheetChartLegend");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetChartTitle method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetChartTitle() {
		System.out.println("DeleteWorksheetChartTitle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetChartTitle(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetClearCharts method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetClearCharts() {
		System.out.println("DeleteWorksheetClearCharts");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetClearCharts(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetDeleteChart method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetDeleteChart() {
		System.out.println("DeleteWorksheetDeleteChart");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			ChartsResponse result = cellsApi.DeleteWorksheetDeleteChart(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetChart method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetChart() {
		System.out.println("GetWorksheetChart");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartNumber = 0;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetChart(name, sheetName, chartNumber, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetChartLegend method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetChartLegend() {
		System.out.println("GetWorksheetChartLegend");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			LegendResponse result = cellsApi.GetWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetCharts method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetCharts() {
		System.out.println("GetWorksheetCharts");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			ChartsResponse result = cellsApi.GetWorksheetCharts(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetChartWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetChartWithFormat() {
		System.out.println("GetWorksheetChartWithFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartNumber = 0;
		String format = "text";
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetChartWithFormat(name, sheetName, chartNumber, format, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetChartLegend method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetChartLegend() {
		System.out.println("PostWorksheetChartLegend");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 0;
		String storage = "";
		String folder = "";
		Legend body = new Legend();
		body.setHeight(15);
		body.setPosition("center");
		try {
			
			LegendResponse result = cellsApi.PostWorksheetChartLegend(name, sheetName, chartIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetChartTitle method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetChartTitle() {
		System.out.println("PostWorksheetChartTitle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 0;
		String storage = "";
		String folder = "";
		Title body = new Title();
		body.setText("New Text");
		body.setHeight(15);
		try {
			
			TitleResponse result = cellsApi.PostWorksheetChartTitle(name, sheetName, chartIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetAddChart method, of class CellsApi.
	 */
	@Test
	public void testPutWorksheetAddChart() {
		System.out.println("PutWorksheetAddChart");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String chartType = "pie";
		Integer upperLeftRow = 1;
		Integer upperLeftColumn = 1;
		Integer lowerRightRow = 1;
		Integer lowerRightColumn = 1;
		String area = "";
		Boolean isVertical = false;
		String categoryData = "";
		Boolean isAutoGetSerialName = true;
		String title = "New Title";
		String storage = "";
		String folder = "";
		try {
			
			ChartsResponse result = cellsApi.PutWorksheetAddChart(name, sheetName, chartType, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData, isAutoGetSerialName, title, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetChartLegend method, of class CellsApi.
	 */
	@Test
	public void testPutWorksheetChartLegend() {
		System.out.println("PutWorksheetChartLegend");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PutWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetChartTitle method, of class CellsApi.
	 */
	@Test
	public void testPutWorksheetChartTitle() {
		System.out.println("PutWorksheetChartTitle");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer chartIndex = 1;
		String storage = "";
		String folder = "";
		Title body = new Title();
		body.setText("Text");
		try {
			
			TitleResponse result = cellsApi.PutWorksheetChartTitle(name, sheetName, chartIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetHyperlink method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetHyperlink() {
		System.out.println("DeleteWorkSheetHyperlink");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer hyperlinkIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetHyperlinks method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetHyperlinks() {
		System.out.println("DeleteWorkSheetHyperlinks");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorkSheetHyperlinks(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetHyperlink method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetHyperlink() {
		System.out.println("GetWorkSheetHyperlink");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer hyperlinkIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			HyperlinkResponse result = cellsApi.GetWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetHyperlinks method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetHyperlinks() {
		System.out.println("GetWorkSheetHyperlinks");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			HyperlinksResponse result = cellsApi.GetWorkSheetHyperlinks(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkSheetHyperlink method, of class CellsApi.
	 */
	@Test
	public void testPostWorkSheetHyperlink() {
		System.out.println("PostWorkSheetHyperlink");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer hyperlinkIndex = 1;
		String storage = "";
		String folder = "";
		Hyperlink body = new Hyperlink();
		try {
			
			HyperlinkResponse result = cellsApi.PostWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorkSheetHyperlink method, of class CellsApi.
	 */
	@Test
	public void testPutWorkSheetHyperlink() {
		System.out.println("PutWorkSheetHyperlink");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer firstRow = 1;
		Integer firstColumn = 1;
		Integer totalRows = 1;
		Integer totalColumns = 1;
		String address = "a1";
		String storage = "";
		String folder = "";
		try {
			
			HyperlinkResponse result = cellsApi.PutWorkSheetHyperlink(name, sheetName, firstRow, firstColumn, totalRows, totalColumns, address, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetOleObject method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetOleObject() {
		System.out.println("DeleteWorksheetOleObject");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer oleObjectIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetOleObject(name, sheetName, oleObjectIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetOleObjects method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetOleObjects() {
		System.out.println("DeleteWorksheetOleObjects");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetOleObjects(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetOleObject method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetOleObject() {
		System.out.println("GetWorksheetOleObject");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer objectNumber = 1;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetOleObject(name, sheetName, objectNumber, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetOleObjects method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetOleObjects() {
		System.out.println("GetWorksheetOleObjects");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			OleObjectsResponse result = cellsApi.GetWorksheetOleObjects(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetOleObjectWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetOleObjectWithFormat() {
		System.out.println("GetWorksheetOleObjectWithFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer objectNumber = 1;
		String format = "text";
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetOleObjectWithFormat(name, sheetName, objectNumber, format, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUpdateWorksheetOleObject method, of class CellsApi.
	 */
	@Test
	public void testPostUpdateWorksheetOleObject() {
		System.out.println("PostUpdateWorksheetOleObject");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer oleObjectIndex = 1;
		String storage = "";
		String folder = "";
		OleObject body = new OleObject();
		try {
			
			SaaSposeResponse result = cellsApi.PostUpdateWorksheetOleObject(name, sheetName, oleObjectIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetOleObject method, of class CellsApi.
	 */
	@Test
	public void testPutWorksheetOleObject() {
		System.out.println("PutWorksheetOleObject");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer upperLeftRow = 1;
		Integer upperLeftColumn = 1;
		Integer height = 1;
		Integer width = 1;
		String oleFile = "";
		String imageFile = "";
		String storage = "";
		String folder = "";
		OleObject body = new OleObject();
		body.setName("NewObject");
		body.setText("NewText");
		try {
			
			OleObjectResponse result = cellsApi.PutWorksheetOleObject(name, sheetName, upperLeftRow, upperLeftColumn, height, width, oleFile, imageFile, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetPicture method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetPicture() {
		System.out.println("DeleteWorksheetPicture");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer pictureIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetPicture(name, sheetName, pictureIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetPictures method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetPictures() {
		System.out.println("DeleteWorkSheetPictures");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorkSheetPictures(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetPicture method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetPicture() {
		System.out.println("GetWorksheetPicture");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer pictureNumber = 1;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetPicture(name, sheetName, pictureNumber, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetPictures method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetPictures() {
		System.out.println("GetWorksheetPictures");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			PicturesResponse result = cellsApi.GetWorksheetPictures(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorksheetPictureWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorksheetPictureWithFormat() {
		System.out.println("GetWorksheetPictureWithFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer pictureNumber = 1;
		String format = "text";
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorksheetPictureWithFormat(name, sheetName, pictureNumber, format, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkSheetPicture method, of class CellsApi.
	 */
	@Test
	public void testPostWorkSheetPicture() {
		System.out.println("PostWorkSheetPicture");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer pictureIndex = 1;
		String storage = "";
		String folder = "";
		Picture body = new Picture();
		body.setName("NewImage");
		try {
			
			PictureResponse result = cellsApi.PostWorkSheetPicture(name, sheetName, pictureIndex, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetAddPicture method, of class CellsApi.
	 */
//	@Test
//	public void testPutWorksheetAddPicture() {
//		System.out.println("PutWorksheetAddPicture");
//		String name = "test_cells.xlsx";
//		String sheetName = "Sheet1";
//		Integer upperLeftRow = 1;
//		Integer upperLeftColumn = 1;
//		Integer lowerRightRow = 1;
//		Integer lowerRightColumn = 1;
//		String picturePath = "1";
//		String storage = "";
//		String folder = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_cell.xlsx").toURI());
//			PicturesResponse result = cellsApi.PutWorksheetAddPicture(name, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, picturePath, storage, folder, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of DeleteDocumentProperties method, of class CellsApi.
	 */
	@Test
	public void testDeleteDocumentProperties() {
		System.out.println("DeleteDocumentProperties");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			CellsDocumentPropertiesResponse result = cellsApi.DeleteDocumentProperties(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteDocumentProperty method, of class CellsApi.
	 */
	@Test
	public void testDeleteDocumentProperty() {
		System.out.println("DeleteDocumentProperty");
		String name = "test_cells.xlsx";
		String propertyName = "Author";
		String storage = "";
		String folder = "";
		try {
			
			CellsDocumentPropertiesResponse result = cellsApi.DeleteDocumentProperty(name, propertyName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetDocumentProperties method, of class CellsApi.
	 */
	@Test
	public void testGetDocumentProperties() {
		System.out.println("GetDocumentProperties");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			CellsDocumentPropertiesResponse result = cellsApi.GetDocumentProperties(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetDocumentProperty method, of class CellsApi.
	 */
	@Test
	public void testGetDocumentProperty() {
		System.out.println("GetDocumentProperty");
		String name = "test_cells.xlsx";
		String propertyName = "Author";
		String storage = "";
		String folder = "";
		try {
			
			CellsDocumentPropertyResponse result = cellsApi.GetDocumentProperty(name, propertyName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutDocumentProperty method, of class CellsApi.
	 */
	@Test
	public void testPutDocumentProperty() {
		System.out.println("PutDocumentProperty");
		String name = "test_cells.xlsx";
		String propertyName = "Author";
		String storage = "";
		String folder = "";
		CellsDocumentProperty body = new CellsDocumentProperty();
		try {
			
			CellsDocumentPropertyResponse result = cellsApi.PutDocumentProperty(name, propertyName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostDocumentSaveAs method, of class CellsApi.
	 */
	@Test
	public void testPostDocumentSaveAs() {
		System.out.println("PostDocumentSaveAs");
		String name = "test_cells.xlsx";
		String newfilename = "test_cells_new.xlsx";
		Boolean isAutoFitRows = false;
		Boolean isAutoFitColumns = false;
		String storage = "";
		String folder = "";
		SaveOptions body = new SaveOptions();
		body.setSortNames(true);
		try {
			
			SaveResponse result = cellsApi.PostDocumentSaveAs(name, newfilename, isAutoFitRows, isAutoFitColumns, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteDecryptDocument method, of class CellsApi.
	 */
	@Test
	public void testDeleteDecryptDocument() {
		System.out.println("DeleteDecryptDocument");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		WorkbookEncryptionRequest body = new WorkbookEncryptionRequest();
		try {
			
			SaaSposeResponse result = cellsApi.DeleteDecryptDocument(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteDocumentUnProtectFromChanges method, of class CellsApi.
	 */
	@Test
	public void testDeleteDocumentUnProtectFromChanges() {
		System.out.println("DeleteDocumentUnProtectFromChanges");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteDocumentUnProtectFromChanges(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteUnProtectDocument method, of class CellsApi.
	 */
	@Test
	public void testDeleteUnProtectDocument() {
		System.out.println("DeleteUnProtectDocument");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		WorkbookProtectionRequest body = new WorkbookProtectionRequest();
		try {
			
			SaaSposeResponse result = cellsApi.DeleteUnProtectDocument(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBook method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBook() {
		System.out.println("GetWorkBook");
		String name = "test_cells.xlsx";
		String password = "";
		Boolean isAutoFit = false;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorkBook(name, password, isAutoFit, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBookDefaultStyle method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBookDefaultStyle() {
		System.out.println("GetWorkBookDefaultStyle");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			StyleResponse result = cellsApi.GetWorkBookDefaultStyle(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBookName method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBookName() {
		System.out.println("GetWorkBookName");
		String name = "test_cells.xlsx";
		String nameName = "testName.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			NameResponse result = cellsApi.GetWorkBookName(name, nameName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBookNames method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBookNames() {
		System.out.println("GetWorkBookNames");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			NamesResponse result = cellsApi.GetWorkBookNames(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBookTextItems method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBookTextItems() {
		System.out.println("GetWorkBookTextItems");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			TextItemsResponse result = cellsApi.GetWorkBookTextItems(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkBookWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorkBookWithFormat() {
		System.out.println("GetWorkBookWithFormat");
		String name = "test_cells.xlsx";
		String format = "text";
		String password = "";
		Boolean isAutoFit = false;
		String storage = "";
		String folder = "";
		String outPath = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorkBookWithFormat(name, format, password, isAutoFit, storage, folder, outPath);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostAutofitWorkbookRows method, of class CellsApi.
	 */
	@Test
	public void testPostAutofitWorkbookRows() {
		System.out.println("PostAutofitWorkbookRows");
		String name = "test_cells.xlsx";
		Integer startRow = 1;
		Integer endRow = 1;
		Boolean onlyAuto = false;
		String storage = "";
		String folder = "";
		AutoFitterOptions body = new AutoFitterOptions();
		body.setAutoFitMergedCells(false);
		try {
			
			SaaSposeResponse result = cellsApi.PostAutofitWorkbookRows(name, startRow, endRow, onlyAuto, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostEncryptDocument method, of class CellsApi.
	 */
	@Test
	public void testPostEncryptDocument() {
		System.out.println("PostEncryptDocument");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		WorkbookEncryptionRequest body = new WorkbookEncryptionRequest();
		body.setKeyLength(16);
		try {
			
			SaaSposeResponse result = cellsApi.PostEncryptDocument(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostImportData method, of class CellsApi.
	 */
	@Test
	public void testPostImportData() {
		System.out.println("PostImportData");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		ImportOption body = new ImportOption();
		body.setIsInsert(false);
		try {
			
			SaaSposeResponse result = cellsApi.PostImportData(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostProtectDocument method, of class CellsApi.
	 */
	@Test
	public void testPostProtectDocument() {
		System.out.println("PostProtectDocument");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		WorkbookProtectionRequest body = new WorkbookProtectionRequest();
		body.setPassword("");
		try {
			
			SaaSposeResponse result = cellsApi.PostProtectDocument(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkbookCalculateFormula method, of class CellsApi.
	 */
	@Test
	public void testPostWorkbookCalculateFormula() {
		System.out.println("PostWorkbookCalculateFormula");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostWorkbookCalculateFormula(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkbookGetSmartMarkerResult method, of class CellsApi.
	 */
//	@Test
//	public void testPostWorkbookGetSmartMarkerResult() {
//		System.out.println("PostWorkbookGetSmartMarkerResult");
//		String name = "test_cells.xlsx";
//		String xmlFile = "this.xml";
//		String storage = "";
//		String folder = "";
//		String outPath = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_slide.pptx").toURI());
//			ResponseMessage result = cellsApi.PostWorkbookGetSmartMarkerResult(name, xmlFile, storage, folder, outPath, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of PostWorkbooksMerge method, of class CellsApi.
	 */
	@Test
	public void testPostWorkbooksMerge() {
		System.out.println("PostWorkbooksMerge");
		String name = "test_cells.xlsx";
		String mergeWith = "4";
		String storage = "";
		String folder = "";
		try {
			
			WorkbookResponse result = cellsApi.PostWorkbooksMerge(name, mergeWith, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkbookSplit method, of class CellsApi.
	 */
	@Test
	public void testPostWorkbookSplit() {
		System.out.println("PostWorkbookSplit");
		String name = "test_cells.xlsx";
		String format = "text";
		Integer from = 1;
		Integer to = 2;
		Integer horizontalResolution = 128;
		Integer verticalResolution = 128;
		String storage = "";
		String folder = "";
		try {
			
			SplitResultResponse result = cellsApi.PostWorkbookSplit(name, format, from, to, horizontalResolution, verticalResolution, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkbooksTextReplace method, of class CellsApi.
	 */
	@Test
	public void testPostWorkbooksTextReplace() {
		System.out.println("PostWorkbooksTextReplace");
		String name = "test_cells.xlsx";
		String oldValue = "";
		String newValue = "TextNew";
		String storage = "";
		String folder = "";
		try {
			
			WorkbookReplaceResponse result = cellsApi.PostWorkbooksTextReplace(name, oldValue, newValue, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkbooksTextSearch method, of class CellsApi.
	 */
	@Test
	public void testPostWorkbooksTextSearch() {
		System.out.println("PostWorkbooksTextSearch");
		String name = "test_cells.xlsx";
		String text = "NewTest";
		String storage = "";
		String folder = "";
		try {
			
			TextItemsResponse result = cellsApi.PostWorkbooksTextSearch(name, text, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutConvertWorkBook method, of class CellsApi.
	 */
//	@Test
//	public void testPutConvertWorkBook() {
//		System.out.println("PutConvertWorkBook");
//		String format = "text";
//		String password = "";
//		String outPath = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_cell.xlsx").toURI());			
//			ResponseMessage result = cellsApi.PutConvertWorkBook(format, password, outPath, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//				} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of PutDocumentProtectFromChanges method, of class CellsApi.
	 */
	@Test
	public void testPutDocumentProtectFromChanges() {
		System.out.println("PutDocumentProtectFromChanges");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		PasswordRequest body = new PasswordRequest();
		body.setPassword("");
		try {
			
			SaaSposeResponse result = cellsApi.PutDocumentProtectFromChanges(name, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorkbookCreate method, of class CellsApi.
	 */
//	@Test
//	public void testPutWorkbookCreate() {
//		System.out.println("PutWorkbookCreate");
//		String name = "test_cells.xlsx";
//		String templateFile = "";
//		String dataFile = "";
//		String storage = "";
//		String folder = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_cell.xlsx").toURI());
//			WorkbookResponse result = cellsApi.PutWorkbookCreate(name, templateFile, dataFile, storage, folder, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of DeleteUnprotectWorksheet method, of class CellsApi.
	 */
	@Test
	public void testDeleteUnprotectWorksheet() {
		System.out.println("DeleteUnprotectWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		ProtectSheetParameter body = null;
		try {
			
			WorksheetResponse result = cellsApi.DeleteUnprotectWorksheet(name, sheetName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheet method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheet() {
		System.out.println("DeleteWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			WorksheetsResponse result = cellsApi.DeleteWorksheet(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetBackground method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetBackground() {
		System.out.println("DeleteWorkSheetBackground");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String folder = "";
		String storage = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorkSheetBackground(name, sheetName, folder, storage);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetComment method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetComment() {
		System.out.println("DeleteWorkSheetComment");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "";
		String storage = "";
		String folder = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorkSheetComment(name, sheetName, cellName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorksheetFreezePanes method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorksheetFreezePanes() {
		System.out.println("DeleteWorksheetFreezePanes");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer row = null;
		Integer column = null;
		Integer freezedRows = null;
		Integer freezedColumns = null;
		String folder = "";
		String storage = "";
		try {
			
			SaaSposeResponse result = cellsApi.DeleteWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheet method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheet() {
		System.out.println("GetWorkSheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer verticalResolution = null;
		Integer horizontalResolution = null;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorkSheet(name, sheetName, verticalResolution, horizontalResolution, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetCalculateFormula method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetCalculateFormula() {
		System.out.println("GetWorkSheetCalculateFormula");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String formula = "sum(a1:a2)";
		String storage = "";
		String folder = "";
		try {
			SingleValueResponse expResult = null;
			SingleValueResponse result = cellsApi.GetWorkSheetCalculateFormula(name, sheetName, formula, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetComment method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetComment() {
		System.out.println("GetWorkSheetComment");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "";
		String storage = "";
		String folder = "";
		try {
			
			CommentResponse result = cellsApi.GetWorkSheetComment(name, sheetName, cellName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetComments method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetComments() {
		System.out.println("GetWorkSheetComments");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			CommentsResponse expResult = null;
			CommentsResponse result = cellsApi.GetWorkSheetComments(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetMergedCell method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetMergedCell() {
		System.out.println("GetWorkSheetMergedCell");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer mergedCellIndex = null;
		String storage = "";
		String folder = "";
		try {
			MergedCellResponse result = cellsApi.GetWorkSheetMergedCell(name, sheetName, mergedCellIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetMergedCells method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetMergedCells() {
		System.out.println("GetWorkSheetMergedCells");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			MergedCellsResponse result = cellsApi.GetWorkSheetMergedCells(name, sheetName, storage, folder);			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheets method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheets() {
		System.out.println("GetWorkSheets");
		String name = "test_cells.xlsx";
		String storage = "";
		String folder = "";
		try {
			
			WorksheetsResponse result = cellsApi.GetWorkSheets(name, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetTextItems method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetTextItems() {
		System.out.println("GetWorkSheetTextItems");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			TextItemsResponse result = cellsApi.GetWorkSheetTextItems(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetWithFormat method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetWithFormat() {
		System.out.println("GetWorkSheetWithFormat");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String format = "text";
		Integer verticalResolution = 1;
		Integer horizontalResolution = 1;
		String storage = "";
		String folder = "";
		try {
			
			ResponseMessage result = cellsApi.GetWorkSheetWithFormat(name, sheetName, format, verticalResolution, horizontalResolution, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostAutofitWorksheetRows method, of class CellsApi.
	 */
	@Test
	public void testPostAutofitWorksheetRows() {
		System.out.println("PostAutofitWorksheetRows");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer startRow = 1;
		Integer endRow = 1;
		Boolean onlyAuto = false;
		String storage = "";
		String folder = "";
		AutoFitterOptions body = new AutoFitterOptions();
		body.setOnlyAuto(true);
		try {
			
			SaaSposeResponse result = cellsApi.PostAutofitWorksheetRows(name, sheetName, startRow, endRow, onlyAuto, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostCopyWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPostCopyWorksheet() {
		System.out.println("PostCopyWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String sourceSheet = "Sheet2";
		String folder = "";
		String storage = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostCopyWorksheet(name, sheetName, sourceSheet, folder, storage);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostMoveWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPostMoveWorksheet() {
		System.out.println("PostMoveWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		WorksheetMovingRequest body = new WorksheetMovingRequest();
		body.setDestinationWorksheet("Sheet3");
		try {
			
			WorksheetsResponse result = cellsApi.PostMoveWorksheet(name, sheetName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostRenameWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPostRenameWorksheet() {
		System.out.println("PostRenameWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String newname = "newSheet";
		String folder = "";
		String storage = "";
		try {
			
			SaaSposeResponse result = cellsApi.PostRenameWorksheet(name, sheetName, newname, folder, storage);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostUpdateWorksheetProperty method, of class CellsApi.
	 */
	@Test
	public void testPostUpdateWorksheetProperty() {
		System.out.println("PostUpdateWorksheetProperty");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String folder = "";
		String storage = "";
		Worksheet body = new Worksheet();
		try {
			
			WorksheetResponse result = cellsApi.PostUpdateWorksheetProperty(name, sheetName, folder, storage, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkSheetComment method, of class CellsApi.
	 */
	@Test
	public void testPostWorkSheetComment() {
		System.out.println("PostWorkSheetComment");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "A1";
		String storage = "";
		String folder = "";
		Comment body = new Comment();
		body.setCellName("NewCell");
		try {
			
			SaaSposeResponse result = cellsApi.PostWorkSheetComment(name, sheetName, cellName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorksheetRangeSort method, of class CellsApi.
	 */
	@Test
	public void testPostWorksheetRangeSort() {
		System.out.println("PostWorksheetRangeSort");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellArea = "";
		String storage = "";
		String folder = "";
		DataSorter body = new DataSorter();
		body.setCaseSensitive("Upper");
		try {
			
			SaaSposeResponse result = cellsApi.PostWorksheetRangeSort(name, sheetName, cellArea, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkSheetTextSearch method, of class CellsApi.
	 */
	@Test
	public void testPostWorkSheetTextSearch() {
		System.out.println("PostWorkSheetTextSearch");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String text = "NewText";
		String storage = "";
		String folder = "";
		try {
			
			TextItemsResponse result = cellsApi.PostWorkSheetTextSearch(name, sheetName, text, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorsheetTextReplace method, of class CellsApi.
	 */
	@Test
	public void testPostWorsheetTextReplace() {
		System.out.println("PostWorsheetTextReplace");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String oldValue = "";
		String newValue = "TextNew";
		String storage = "";
		String folder = "";
		try {
		
			WorksheetReplaceResponse result = cellsApi.PostWorsheetTextReplace(name, sheetName, oldValue, newValue, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutAddNewWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPutAddNewWorksheet() {
		System.out.println("PutAddNewWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			WorksheetsResponse result = cellsApi.PutAddNewWorksheet(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutChangeVisibilityWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPutChangeVisibilityWorksheet() {
		System.out.println("PutChangeVisibilityWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Boolean isVisible = true;
		String storage = "";
		String folder = "";
		try {
			
			WorksheetResponse result = cellsApi.PutChangeVisibilityWorksheet(name, sheetName, isVisible, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutProtectWorksheet method, of class CellsApi.
	 */
	@Test
	public void testPutProtectWorksheet() {
		System.out.println("PutProtectWorksheet");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		ProtectSheetParameter body = new ProtectSheetParameter();
		try {
			
			WorksheetResponse result = cellsApi.PutProtectWorksheet(name, sheetName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorkSheetBackground method, of class CellsApi.
	 */
//	@Test
//	public void testPutWorkSheetBackground() {
//		System.out.println("PutWorkSheetBackground");
//		String name = "test_cells.xlsx";
//		String sheetName = "Sheet1";
//		String folder = "";
//		String storage = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_slide.pptx").toURI());
//			SaaSposeResponse result = cellsApi.PutWorkSheetBackground(name, sheetName, folder, storage, file);			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of PutWorkSheetComment method, of class CellsApi.
	 */
	@Test
	public void testPutWorkSheetComment() {
		System.out.println("PutWorkSheetComment");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String cellName = "A1";
		String storage = "";
		String folder = "";
		Comment body = new Comment();
		try {
			
			CommentResponse result = cellsApi.PutWorkSheetComment(name, sheetName, cellName, storage, folder, body);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PutWorksheetFreezePanes method, of class CellsApi.
	 */
	@Test
	public void testPutWorksheetFreezePanes() {
		System.out.println("PutWorksheetFreezePanes");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer row = 1;
		Integer column = 1;
		Integer freezedRows = 1;
		Integer freezedColumns = 1;
		String folder = "";
		String storage = "";
		try {
			
			SaaSposeResponse result = cellsApi.PutWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of DeleteWorkSheetValidation method, of class CellsApi.
	 */
	@Test
	public void testDeleteWorkSheetValidation() {
		System.out.println("DeleteWorkSheetValidation");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer validationIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			ValidationResponse result = cellsApi.DeleteWorkSheetValidation(name, sheetName, validationIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetValidation method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetValidation() {
		System.out.println("GetWorkSheetValidation");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		Integer validationIndex = 1;
		String storage = "";
		String folder = "";
		try {
			
			ValidationResponse result = cellsApi.GetWorkSheetValidation(name, sheetName, validationIndex, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of GetWorkSheetValidations method, of class CellsApi.
	 */
	@Test
	public void testGetWorkSheetValidations() {
		System.out.println("GetWorkSheetValidations");
		String name = "test_cells.xlsx";
		String sheetName = "Sheet1";
		String storage = "";
		String folder = "";
		try {
			
			ValidationsResponse result = cellsApi.GetWorkSheetValidations(name, sheetName, storage, folder);
			
			
		} catch (ApiException apiException) {
			System.out.println("exp:" + apiException.getMessage());
			assertNull(apiException);
		}
	}

	/**
	 * Test of PostWorkSheetValidation method, of class CellsApi.
	 */
//	@Test
//	public void testPostWorkSheetValidation() {
//		System.out.println("PostWorkSheetValidation");
//		String name = "test_cells.xlsx";
//		String sheetName = "Sheet1";
//		Integer validationIndex = 1;
//		String storage = "";
//		String folder = "";
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_slide.pptx").toURI());
//			ValidationResponse result = cellsApi.PostWorkSheetValidation(name, sheetName, validationIndex, storage, folder, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}

	/**
	 * Test of PutWorkSheetValidation method, of class CellsApi.
	 */
//	@Test
//	public void testPutWorkSheetValidation() {
//		System.out.println("PutWorkSheetValidation");
//		String name = "test_cells.xlsx";
//		String sheetName = "Sheet1";
//		String range = "";
//		String storage = "";
//		String folder = "";	
//		File file;
//		try {
//			file = new File(getClass().getResource("/test_convert_cell.xlsx").toURI());
//			ValidationResponse result = cellsApi.PutWorkSheetValidation(name, sheetName, range, storage, folder, file);
//			
//			
//		} catch (ApiException apiException) {
//			System.out.println("exp:" + apiException.getMessage());
//			assertNull(apiException);
//		} catch(java.net.URISyntaxException uriExp){
//			System.out.println("uri exp:" + uriExp.getMessage());
//		}
//
//	}
}
