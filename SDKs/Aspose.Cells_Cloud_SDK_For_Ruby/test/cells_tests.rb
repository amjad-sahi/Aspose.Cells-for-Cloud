require "minitest/autorun"
require "minitest/unit"

require_relative '../lib/aspose_cells_cloud'

class CellsTests < Minitest::Test
	include MiniTest::Assertions
	include AsposeCellsCloud
	include AsposeStorageCloud
	
	def setup
        #Get App key and App SID from https://cloud.aspose.com
        AsposeApp.app_key_and_sid("", "")
		@cells_api = CellsApi.new
	end

	def teardown
	end

	def upload_file(file_name)
        @storage_api = StorageApi.new
		response = @storage_api.put_create(file_name, File.open("data/" << file_name,"r") { |io| io.read } )
		assert(response, message="Failed to upload {file_name} file.")
	end

	def test_put_convert_work_book
        file_name = "myWorkbook.xlsx"
        convert_to_format = "pdf"
        response = @cells_api.put_convert_work_book(File.open("data/" << file_name,"r") { |io| io.read }, {format: convert_to_format})
	 	assert(response, message="Failed to convert workbook from request content to {convert_to_format} format.")
	end
    
    def test_get_work_book_with_format
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_work_book_with_format(file_name, "pdf")
    	assert(response, message="Failed to convert excel workbook to different file formats.")
    end

    def test_get_work_book
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        response = @cells_api.get_work_book(file_name)
    	assert(response, message="Failed to read workbook info.")
    end

    def test_put_workbook_create
    	response = @cells_api.put_workbook_create("newworkbook.xlsx")
    	assert(response, message="Failed to create new workbook.")
    end

    def test_post_document_save_as
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	save_options = SavingSaveOptions.new
    	save_options.clear_data = true
    	response = @cells_api.post_document_save_as(file_name, save_options, {newfilename: "updatedWorkbook.xlsx", isAutoFitRows: true, isAutoFitColumns: true})
        assert(response, message="Failed to convert document and save result to storage.")
    end

    def test_post_autofit_workbook_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	auto_fitter_options = AutoFitterOptions.new
    	auto_fitter_options.auto_fit_merged_cells = true
    	auto_fitter_options.ignore_hidden = true
    	response = @cells_api.post_autofit_workbook_rows(file_name, auto_fitter_options, {startRow: 1, endRow: 300, onlyAuto: true})
    	assert(response, message="Failed to autofit workbook rows")
    end

    def test_post_workbook_calculate_formula
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.post_workbook_calculate_formula(file_name)
    	assert(response, message="Failed to calculate all formulas in workbook")
    end

    def test_get_work_book_default_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_work_book_default_style(file_name)
    	assert(response, message="Failed to read workbook default style info")
    end

    def test_get_document_properties
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_document_properties(file_name)
    	assert(response, message="Failed to read document properties")
    end

    def test_delete_document_properties
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.delete_document_properties(file_name)
    	assert(response, message="Failed to delete all custom document properties and clean built-in ones")
    end

    def test_get_document_property
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	property_name = "Title"
    	response = @cells_api.get_document_property(file_name, property_name)
    	assert(response, message="Failed to read document property by name")
    end

    def test_put_document_property
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	property_name = "Title"
    	cells_document_property = CellsDocumentProperty.new
    	cells_document_property.name = "Title"
    	cells_document_property.value = "Tax Reforms"
    	response = @cells_api.put_document_property(file_name, property_name, cells_document_property)
    	assert(response, message="Failed to set/create document property")
    end

    def test_delete_document_property
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	property_name = "author"
    	response = @cells_api.delete_document_property(file_name, property_name)
    	assert(response, message="Failed to delete document property")
    end

    def test_post_encrypt_document
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	encryption_request = WorkbookEncryptionRequest.new
    	encryption_request.encryption_type = "EnhancedCryptographicProviderV1"
    	encryption_request.password = "password1234"
    	encryption_request.key_length = 128
    	response = @cells_api.post_encrypt_document(file_name, encryption_request)
    	assert(response, message="Failed to encrypt document")
    end

    def test_delete_decrypt_document
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	encryption_request = WorkbookEncryptionRequest.new
    	encryption_request.password = "password1234"
    	response = @cells_api.delete_decrypt_document(file_name, encryption_request)
    	assert(response, message="Failed to decrypt document")
    end

    def test_post_workbooks_text_search
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	text = "aspose"
    	response = @cells_api.post_workbooks_text_search(file_name, text)
    	assert(response, message="Failed to search text")
    end

    def test_post_import_data
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	import_option = ImportDataImportOption.new
    	import_option.destination_worksheet = "Sheet3"
    	import_option.is_insert = true
    	response = @cells_api.post_import_data(file_name, import_option)
    	assert(response, message="Failed to import data to workbook")
    end

    def test_post_workbooks_merge
    	file_name = "Sample_Book1.xlsx"
    	upload_file(file_name)
    	merge_with = "Sample_Book2.xls"
       upload_file(merge_with)

    	response = @cells_api.post_workbooks_merge(file_name, merge_with)
    	assert(response, message="Failed to merge workbooks")
    end

    def test_get_work_book_names
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	response = @cells_api.get_work_book_names(file_name)
    	assert(response, message="Failed to read workbook's names")
    end

    def test_get_work_book_name 
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	name_name = "TestRange"
    	response = @cells_api.get_work_book_name(file_name, name_name)
    	assert(response, message="Failed to read workbook's name")
    end

    def test_post_protect_document
    	file_name = "myWorkbook.xlsx"
        upload_file(file_name)

    	protection_request = WorkbookProtectionRequest.new
    	protection_request.protection_type = "All"
    	protection_request.password = "password1234"
    	response = @cells_api.post_protect_document(file_name, protection_request)
    	assert(response, message="Failed to protect document")
    end

    def test_delete_un_protect_document
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	protection_request = WorkbookProtectionRequest.new
    	protection_request.password = "password1234"
    	response = @cells_api.delete_un_protect_document(file_name, protection_request)
    	assert(response, message="Failed to unprotect document")
    end

    def test_post_workbooks_text_replace
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	old_value = "Averages"
    	new_value = "Median"
    	response = @cells_api.post_workbooks_text_replace(file_name, old_value, new_value)
    	assert(response, message="Failed to replace text")
    end

    def test_get_workbook_settings
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_workbook_settings(file_name)
    	assert(response, message="Failed to get workbook settings")
    end

    def test_post_workbook_settings
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	workbook_settings = WorkbookSettings.new
    	workbook_settings.auto_compress_pictures = true
    	workbook_settings.enable_macros = true
    	workbook_settings.is_h_scroll_bar_visible = false

    	response = @cells_api.post_workbook_settings(file_name, {settings: workbook_settings})
    	assert(response, message="Failed to update workbook settings")
    end

    def test_post_workbook_get_smart_marker_result
    	file_name = "Sample_SmartMarker.xlsx"
    	upload_file(file_name)
    	data_file = "Sample_SmartMarker_Data.xml"

    	response = @cells_api.post_workbook_get_smart_marker_result(file_name, File.open("data/" << data_file,"r") { |io| io.read })
     	assert(response, message="Failed to get smart marker processing result")
    end

    def test_post_workbook_split
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	response = @cells_api.post_workbook_split(file_name, {format: "png", from: 1, to: 1})
    	assert(response, message="Failed to split workbook")
    end

    def test_get_work_book_text_items
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_work_book_text_items(file_name)
    	assert(response, message="Failed to read workbook's text items")
    end

    def test_get_work_sheets
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	response = @cells_api.get_work_sheets(file_name)
    	assert(response, message="Failed to read worksheets info")
    end

    def test_get_work_sheet
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.get_work_sheet(file_name, sheet_name)
    	assert(response, message="Failed to read worksheet info")
    end

    def test_get_work_sheet_with_format
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	format = "gif"
    	response = @cells_api.get_work_sheet_with_format(file_name, sheet_name, format)
    	assert(response, message="Failed to read worksheet in {format} format.")
    end

    def test_put_add_new_worksheet
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Tasks"
    	response = @cells_api.put_add_new_worksheet(file_name, sheet_name)
    	assert(response, message="Failed to add new worksheet")
    end

    def test_post_update_worksheet_property
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	worksheet = Worksheet.new
    	worksheet.type = "Worksheet"
    	worksheet.name = "sheet1"
    	worksheet.is_gridlines_visible = true
    	worksheet.is_row_column_headers_visible = true
    	worksheet.display_zeros = true
    	worksheet.display_right_to_left = true
    	worksheet.is_outline_shown = true
    	worksheet.is_selected = true
    	worksheet.transition_evaluation = true
    	worksheet.transition_entry = true
    	worksheet.is_visible = true
    	worksheet.index = 0
    	worksheet.first_visible_row = 1
    	worksheet.first_visible_column = 1
    	worksheet.zoom = 80
    	worksheet.view_type = "PageBreakPreview"
    	worksheet.is_page_break_preview = true
    	worksheet.is_ruler_visible = true
    	response = @cells_api.post_update_worksheet_property(file_name, sheet_name, worksheet)
    	assert(response, message="Failed to update worksheet property")
    end

    def test_delete_worksheet
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet3"
    	response = @cells_api.delete_worksheet(file_name, sheet_name)
    	assert(response, message="Failed to delete worksheet")
    end

    def test_post_autofit_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	auto_fitter_options = AutoFitterOptions.new
    	auto_fitter_options.auto_fit_merged_cells = true
    	auto_fitter_options.ignore_hidden = true
    	auto_fitter_options.only_auto = true
    	response = @cells_api.post_autofit_worksheet_rows(file_name, sheet_name, auto_fitter_options, {startRow: 1, endRow: 10, onlyAuto: true})
    	assert(response, message="Failed to autofit worksheet rows")
    end

    def test_get_worksheet_autoshapes
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet4"
    	response = @cells_api.get_worksheet_autoshapes(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet autoshapes info")
    end

    def test_get_worksheet_autoshape
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet4"
    	autoshape_number = 1
    	response = @cells_api.get_worksheet_autoshape(file_name, sheet_name, autoshape_number)
    	assert(response, message="Failed to get autoshape info")
    end

    def test_get_worksheet_autoshape_with_format
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet4"
    	autoshape_number = 1
    	format = "png"
    	response = @cells_api.get_worksheet_autoshape_with_format(file_name, sheet_name, autoshape_number, format)
    	assert(response, message="Failed to get autoshape info")
    end

    def test_put_work_sheet_background
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	background_image = File.open("data/Creative.jpg","r") { |io| io.read }
    	response = @cells_api.put_work_sheet_background(file_name, sheet_name, background_image)
    	assert(response, message="Failed to set worksheet background image")
    end

    def test_delete_work_sheet_background
    	file_name = "WorkSheetBackground_Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.delete_work_sheet_background(file_name, sheet_name)
    	assert(response, message="Failed to delete worksheet background image")
    end

    def test_get_worksheet_cells
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.get_worksheet_cells(file_name, sheet_name)
    	assert(response, message="Failed to get cells info")
    end

    def test_post_set_cell_range_value
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	cellarea = "A10:B20"
    	value = "1234"
    	type = "int"
    	response = @cells_api.post_set_cell_range_value(file_name, sheet_name, cellarea, value, type)
    	assert(response, message="Failed to set cell range value")
    end

    def test_post_clear_contents
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.post_clear_contents(file_name, sheet_name, {range: "A2:C11", startRow: 2, startColumn: 1, endRow: 11, endColumn: 3})
    	assert(response, message="Failed to clear cells contents")
    end

    def test_post_clear_formats
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.post_clear_formats(file_name, sheet_name, {range: "A2:C11", startRow: 2, startColumn: 1, endRow: 11, endColumn: 3})
    	assert(response, message="Failed to clear cells format")
    end

    def test_get_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.get_worksheet_columns(file_name, sheet_name)
    	assert(response, message="Failed to read worksheet columns info")
    end

    def test_post_copy_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	source_column_index = 2
    	destination_column_index = 0
    	column_number = 4
    	response = @cells_api.post_copy_worksheet_columns(file_name, sheet_name, source_column_index, destination_column_index, column_number)
    	assert(response, message="Failed to copy worksheet columns")
    end

    def test_post_group_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	first_index = 0
    	last_index = 2
    	response = @cells_api.post_group_worksheet_columns(file_name, sheet_name, first_index, last_index, {hide: true})
    	assert(response, message="Failed to group worksheet columns")
    end

    def test_post_hide_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	start_column = 0
    	total_columns = 1
    	response = @cells_api.post_hide_worksheet_columns(file_name, sheet_name, start_column, total_columns)
    	assert(response, message="Failed to hide worksheet columns")
    end

    def test_post_ungroup_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

		sheet_name = "Sheet1"
		first_index = 0
		last_index = 2    	
    	response = @cells_api.post_ungroup_worksheet_columns(file_name, sheet_name, first_index, last_index)
    	assert(response, message="Failed to ungroup worksheet columns")
    end

    def test_post_unhide_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	startcolumn = 0
    	total_columns = 2
    	response = @cells_api.post_unhide_worksheet_columns(file_name, sheet_name, startcolumn, total_columns)
    	assert(response, message="Failed to unhide worksheet columns")
    end

    def test_get_worksheet_column
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	column_index = 1
    	response = @cells_api.get_worksheet_column(file_name, sheet_name, column_index)
    	assert(response, message="Failed to read worksheet column data by column's index")
    end

    def test_put_insert_worksheet_columns
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	column_index = 5
    	columns = 3
    	response = @cells_api.put_insert_worksheet_columns(file_name, sheet_name, column_index, columns, {updateReference: true})
    	assert(response, message="Failed to insert worksheet columns")
    end

    def test_post_set_worksheet_column_width
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	column_index = 3
    	width = 25.0
    	response = @cells_api.post_set_worksheet_column_width(file_name, sheet_name, column_index, width)
    	assert(response, message="Failed to set worksheet column width")
    end

    def test_delete_worksheet_columns
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	column_index = 1
    	columns = 10
    	update_reference = true
    	response = @cells_api.delete_worksheet_columns(file_name, sheet_name, column_index, columns, update_reference)
    	assert(response, message="Failed to delete worksheet columns")
    end

    def test_post_column_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	column_index = 0
    	column_style = Style.new
    	background_color = Color.new
    	background_color.a = "1"
    	background_color.r = "245"
    	background_color.g = "200"
    	background_color.b = "178"
    	column_style.background_color = background_color

    	response = @cells_api.post_column_style(file_name, sheet_name, column_index, column_style)
    	assert(response, message="Failed to set column style")
    end

    def test_post_worksheet_merge
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	start_row = 0
    	start_column = 0
    	total_rows = 5
    	total_columns = 2
    	response = @cells_api.post_worksheet_merge(file_name, sheet_name, start_row, start_column, total_rows, total_columns)
    	assert(response, message="Failed to merge cells")
    end

    def test_get_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	response = @cells_api.get_worksheet_rows(file_name, sheet_name)
    	assert(response, message="Failed to read worksheet rows info")
    end

    def test_put_insert_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	startrow = 10

    	response = @cells_api.put_insert_worksheet_rows(file_name, sheet_name, startrow, {totalRows: 10, updateReference: true})
    	assert(response, message="Failed to insert new worksheet rows")
    end

    def test_delete_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	startrow = 2
    	response = @cells_api.delete_worksheet_rows(file_name, sheet_name, startrow, {totalRows: 5, updateReference: true})
    	assert(response, message="Failed to delete worksheet rows")
    end

    def test_post_copy_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	source_row_index = 5
    	destination_row_index = 7
    	row_number = 3
    	response = @cells_api.post_copy_worksheet_rows(file_name, sheet_name, source_row_index, destination_row_index, row_number)
    	assert(response, message="Failed to copy worksheet rows")
    end

    def test_post_group_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	first_index = 1
    	last_index = 5
    	response = @cells_api.post_group_worksheet_rows(file_name, sheet_name, first_index, last_index, {hide: false})
    	assert(response, message="Failed to group worksheet rows")
    end

    def test_post_hide_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	startrow = 1
    	total_rows = 5
    	response = @cells_api.post_hide_worksheet_rows(file_name, sheet_name, startrow, total_rows)
    	assert(response, message="Failed to hide worksheet rows")
    end

    def test_post_ungroup_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	first_index = 1
    	last_index = 5
    	response = @cells_api.post_ungroup_worksheet_rows(file_name, sheet_name, first_index, last_index, {isAll: true})
    	assert(response, message="Failed to ungroup worksheet rows")
    end

    def test_post_unhide_worksheet_rows
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	startrow = 1
    	total_rows = 3
    	response = @cells_api.post_unhide_worksheet_rows(file_name, sheet_name, startrow, total_rows, {height: 30.0})
    	assert(response, message="Failed to unhide worksheet rows")
    end

    def test_get_worksheet_row
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	row_index = 1
    	response = @cells_api.get_worksheet_row(file_name, sheet_name, row_index)
    	assert(response, message="Failed to read worksheet row data by row's index")
    end

    def test_put_insert_worksheet_row
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	row_index = 10
    	response = @cells_api.put_insert_worksheet_row(file_name, sheet_name, row_index)
    	assert(response, message="Failed to insert new worksheet row")
    end

    def test_post_update_worksheet_row
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	row_index = 1
    	response = @cells_api.post_update_worksheet_row(file_name, sheet_name, row_index, {height: 25.0})
    	assert(response, message="Failed to update worksheet row")
    end

    def test_delete_worksheet_row
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	row_index = 1
    	response = @cells_api.delete_worksheet_row(file_name, sheet_name, row_index)
    	assert(response, message="Failed to delete worksheet row")
    end

    def test_post_row_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	row_index = 1 
    	row_style = Style.new
    	background_color = Color.new
    	background_color.a = "1"
    	background_color.r = "245"
    	background_color.g = "200"
    	background_color.b = "178"
    	row_style.background_color = background_color

    	response = @cells_api.post_row_style(file_name, sheet_name, row_index, row_style)
    	assert(response, message="Failed to set row style")
    end

    def test_post_update_worksheet_range_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

    	sheet_name = "Sheet1"
    	range = "A1:C4" 
    	style = Style.new
    	font = Font.new
    	font.double_size = 20
    	font.is_bold = true
    	font.is_italic = true
    	font.is_strikeout = true
    	font.size = 15

    	style.font = font
    	style.shrink_to_fit = true

    	background_color = Color.new
    	background_color.r = "255"
    	background_color.g = "255"
    	background_color.b = "255"
    	style.background_color = background_color

    	response = @cells_api.post_update_worksheet_range_style(file_name, sheet_name, range, style)
    	assert(response, message="Failed to update cell's range style")
    end

    def test_post_worksheet_unmerge
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

       sheet_name = "Sheet1"
       start_row = 1
       start_column = 1
       total_rows = 5
       total_columns = 3
    	response = @cells_api.post_worksheet_unmerge(file_name, sheet_name, start_row, start_column, total_rows, total_columns)
    	assert(response, message="Failed to unmerge cells")
    end

    def test_post_worksheet_cell_set_value
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

       sheet_name = "Sheet1"
       cell_name = "A3"
    	response = @cells_api.post_worksheet_cell_set_value(file_name, sheet_name, cell_name, {value: "1234", type: "string", formula: "sum(a1,a2)"})
    	assert(response, message="Failed to set cell value")
    end

    def test_post_set_cell_html_string
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

       sheet_name = "Sheet1"
       cell_name = "A3"
    	response = @cells_api.post_set_cell_html_string(file_name, sheet_name, cell_name)

    	assert(response, message="Failed to set htmlstring value into cell")
    end

    def test_get_worksheet_cell_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

       sheet_name = "Sheet1"
        cell_name = "A7"
    	response = @cells_api.get_worksheet_cell_style(file_name, sheet_name, cell_name)
    	assert(response, message="Failed to read cell's style info")
    end

    def test_post_update_worksheet_cell_style
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1" 
        cell_name = "A3"
        cell_style = Style.new
        font = Font.new
        font.double_size = 20
        font.is_bold = true
        font.is_italic = true
        font.is_strikeout = true
        font.size = 15

        cell_style.font = font
        cell_style.shrink_to_fit = true

        background_color = Color.new
        background_color.r = "255"
        background_color.g = "255"
        background_color.b = "255"
        cell_style.background_color = background_color

    	response = @cells_api.post_update_worksheet_cell_style(file_name, sheet_name, cell_name, cell_style)
    	assert(response, message="Failed to update cell's style")
    end

    def test_get_worksheet_cell
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        cell_or_method_name = "A3"
    	response = @cells_api.get_worksheet_cell(file_name, sheet_name, cell_or_method_name)
    	assert(response, message="Failed to read cell data by cell's name")
    end

    def test_post_copy_cell_into_cell
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        dest_cell_name = "C5"
        sheet_name = "Sheet1"
        worksheet = "Sheet1"
    	response = @cells_api.post_copy_cell_into_cell(file_name, dest_cell_name, sheet_name, worksheet, {cellname: "A5"})
    	assert(response, message="Failed to copy cell into cell")
    end

    def test_get_worksheet_charts
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.get_worksheet_charts(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet charts info")
    end

    def test_put_worksheet_add_chart
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        chart_type = "Bar"
    	response = @cells_api.put_worksheet_add_chart(file_name, sheet_name, chart_type, {upperLeftRow: 12, upperLeftColumn: 12, lowerRightRow: 20, lowerRightColumn: 20, area: "B1:F2", isVertical: true, categoryData: "A1:A2", isAutoGetSerialName: true, title: "SalesState"})
    	assert(response, message="Failed to add new chart to worksheet")
    end

    def test_delete_worksheet_clear_charts
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.delete_worksheet_clear_charts(file_name, sheet_name)
    	assert(response, message="Failed to clear the charts")
    end

    def test_delete_worksheet_delete_chart
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.delete_worksheet_delete_chart(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to delete worksheet chart by index")
    end

    def test_get_chart_area
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.get_chart_area(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to get chart area info")
    end

    def test_get_chart_area_border
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.get_chart_area_border(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to get chart area border info")
    end

    def test_get_chart_area_fill_format
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.get_chart_area_fill_format(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to get chart area fill format info")
    end

    def test_get_worksheet_chart_legend
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.get_worksheet_chart_legend(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to get chart legend")
    end

    def test_put_worksheet_chart_legend
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.put_worksheet_chart_legend(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to show legend in chart")
    end

    def test_post_worksheet_chart_legend
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
        charts_legend = ChartsLegend.new
        font = Font.new
        color = Color.new
        color.a = "1"
        color.r = "255"
        color.g = "0"
        color.b = "0"
        font.color = color
        font.double_size = 10.0
        font.is_bold = true
        font.is_italic = false
        font.is_strikeout = false
        font.is_subscript = false
        font.is_superscript = false
        font.name = "Arial"
        font.size = 10
        font.size = 15
        font.underline = "None"
        charts_legend.font = font
        charts_legend.shadow = true        

    	response = @cells_api.post_worksheet_chart_legend(file_name, sheet_name, chart_index, charts_legend)
    	assert(response, message="Failed to update chart legend")
    end

    def test_delete_worksheet_chart_legend
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.delete_worksheet_chart_legend(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to delete worksheet chart legend")
    end

    def test_put_worksheet_chart_title
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
        chart_title = ChartsTitle.new
        chart_title.text = "Sales Chart"
    	response = @cells_api.put_worksheet_chart_title(file_name, sheet_name, chart_index, chart_title)
    	assert(response, message="Failed to add chart title / Set chart title visible")
    end

    def test_post_worksheet_chart_title
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
        chart_title = ChartsTitle.new
        chart_title.text = "Stock exchange"
    	response = @cells_api.post_worksheet_chart_title(file_name, sheet_name, chart_index, chart_title)
    	assert(response, message="Failed to update chart title")
    end

    def test_delete_worksheet_chart_title
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_index = 0
    	response = @cells_api.delete_worksheet_chart_title(file_name, sheet_name, chart_index)
    	assert(response, message="Failed to delete worksheet chart title")
    end

    def test_get_worksheet_chart_with_format
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_number = 0
        format = "png"
    	response = @cells_api.get_worksheet_chart_with_format(file_name, sheet_name, chart_number, format)
    	assert(response, message="Failed to get chart in specified format.")
    end

    def test_get_worksheet_chart
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet5"
        chart_number = 0
    	response = @cells_api.get_worksheet_chart(file_name, sheet_name, chart_number)
    	assert(response, message="Failed to get chart info")
    end

    def test_get_work_sheet_comments
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
    	response = @cells_api.get_work_sheet_comments(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet comments")
    end

    def test_get_work_sheet_comment
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        cell_name = "A4"
    	response = @cells_api.get_work_sheet_comment(file_name, sheet_name, cell_name)
    	assert(response, message="Failed to get worksheet comment by cell name")
    end

    def test_put_work_sheet_comment
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        cell_name = "D18"
        comment = Comment.new
        comment.html_note = "<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">\nShopping</Font>"
        comment.cell_name = "D18"
    	response = @cells_api.put_work_sheet_comment(file_name, sheet_name, cell_name, comment)
    	assert(response, message="Failed to add worksheet's cell comment")
    end

    def test_post_work_sheet_comment
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        cell_name = "A4"
        comment = Comment.new
        comment.auto_size = true
        comment.note = "aspose"
    	response = @cells_api.post_work_sheet_comment(file_name, sheet_name, cell_name, comment)
    	assert(response, message="Failed to update worksheet's cell comment")
    end

    def test_delete_work_sheet_comment
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        cell_name = "D19"
    	response = @cells_api.delete_work_sheet_comment(file_name, sheet_name, cell_name)
    	assert(response, message="Failed to delete worksheet's cell comment")
    end

    def test_post_copy_worksheet
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet3"
        source_sheet = "Sheet1"
    	response = @cells_api.post_copy_worksheet(file_name, sheet_name, source_sheet)
    	assert(response, message="Failed to copy worksheet")
    end

    def test_post_work_sheet_text_search
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        text = "All"
    	response = @cells_api.post_work_sheet_text_search(file_name, sheet_name, text)
    	assert(response, message="Failed to search text")
    end

    def test_get_work_sheet_calculate_formula
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        formula = "SUM(A5:A10)"
    	response = @cells_api.get_work_sheet_calculate_formula(file_name, sheet_name, formula)
    	assert(response, message="Failed to calculate formula value")
    end

    def test_put_worksheet_freeze_panes
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        row = 1
        column = 1 
        freezed_rows = 1 
        freezed_columns = 1
    	response = @cells_api.put_worksheet_freeze_panes(file_name, sheet_name, row, column, freezed_rows, freezed_columns)
    	assert(response, message="Failed to set freeze panes")
    end

    def test_delete_worksheet_freeze_panes
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        row = 1
        column = 1 
        freezed_rows = 1 
        freezed_columns = 1
    	response = @cells_api.delete_worksheet_freeze_panes(file_name, sheet_name, row, column, freezed_rows, freezed_columns)
    	assert(response, message="Failed to unfreeze panes")
    end

    def test_get_work_sheet_hyperlinks
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
    	response = @cells_api.get_work_sheet_hyperlinks(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet hyperlinks")
    end

    def test_put_work_sheet_hyperlink
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        first_row = 1
        first_column = 1 
        total_rows = 2
        total_columns = 2
        address = "http://www.aspose.com/"
    	response = @cells_api.put_work_sheet_hyperlink(file_name, sheet_name, first_row, first_column, total_rows, total_columns, address)
    	assert(response, message="Failed to add worksheet hyperlink")
    end

    def test_delete_work_sheet_hyperlinks
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
    	response = @cells_api.delete_work_sheet_hyperlinks(file_name, sheet_name)
    	assert(response, message="Failed to delete all hyperlinks in worksheet")
    end

    def test_get_work_sheet_hyperlink
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        hyperlink_index = 0
    	response = @cells_api.get_work_sheet_hyperlink(file_name, sheet_name, hyperlink_index)
    	assert(response, message="Failed to get worksheet hyperlink by index")
    end

    def test_post_work_sheet_hyperlink
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        hyperlink_index = 0
        hyperlink = Hyperlink.new
        area = CellArea.new
        area.start_row = 1
        area.start_column = 1
        area.end_row = 3
        area.end_column = 3

        hyperlink.area = area
        hyperlink.address = "http://www.aspose.com/"
        hyperlink.text_to_display = "Aspose"
    	response = @cells_api.post_work_sheet_hyperlink(file_name, sheet_name, hyperlink_index, hyperlink)
    	assert(response, message="Failed to update worksheet hyperlink by index")
    end

    def test_delete_work_sheet_hyperlink
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        hyperlink_index = 0
    	response = @cells_api.delete_work_sheet_hyperlink(file_name, sheet_name, hyperlink_index)
    	assert(response, message="Failed to delete worksheet hyperlink by index")
    end

    def test_get_work_sheet_merged_cells
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.get_work_sheet_merged_cells(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet merged cells")
    end

    def test_get_work_sheet_merged_cell
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        merged_cell_index = 0
    	response = @cells_api.get_work_sheet_merged_cell(file_name, sheet_name, merged_cell_index)
    	assert(response, message="Failed to get worksheet merged cell by its index")
    end

    def test_get_worksheet_ole_objects
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.get_worksheet_ole_objects(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet OLE objects info")
    end

    def test_put_worksheet_ole_object
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        source_file_name = "Sample_Book2.xls"
        upload_file(source_file_name)

        image_file_name = "aspose-logo.png"
        upload_file(image_file_name)

        sheet_name = "Sheet1"
        ole_object = DrawingOleObject.new
        ole_object.source_full_name = source_file_name
        ole_object.image_source_full_name = image_file_name
        ole_object.upper_left_row = 15
        ole_object.upper_left_column = 5
        ole_object.top = 10
        ole_object.left = 10
        ole_object.height = 400
        ole_object.width = 400
        ole_object.is_auto_size = true
    	response = @cells_api.put_worksheet_ole_object(file_name, sheet_name, ole_object)
    	assert(response, message="Failed to add OLE object")
    end

    def test_delete_worksheet_ole_objects
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.delete_worksheet_ole_objects(file_name, sheet_name)
    	assert(response, message="Failed to delete all OLE objects")
    end

    def test_get_worksheet_ole_object_with_format
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        object_number = 0
        format = "png"
    	response = @cells_api.get_worksheet_ole_object_with_format(file_name, sheet_name, object_number, format)
    	assert(response, message="Failed to get OLE object in specified format")
    end

    def test_get_worksheet_ole_object
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        object_number = 0
    	response = @cells_api.get_worksheet_ole_object(file_name, sheet_name, object_number)
    	assert(response, message="Failed to get OLE object info")
    end

    def test_post_update_worksheet_ole_object
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        source_file_name = "Sample_Book2.xls"
        image_file_name = "aspose-logo.png"

        sheet_name = "Sheet1"
        ole_object_index = 0
        ole_object = DrawingOleObject.new
        ole_object.source_full_name = source_file_name
        ole_object.image_source_full_name = image_file_name
        ole_object.upper_left_row = 15
        ole_object.upper_left_column = 5
        ole_object.top = 10
        ole_object.left = 10
        ole_object.height = 400
        ole_object.width = 400
        ole_object.is_auto_size = true

    	response = @cells_api.post_update_worksheet_ole_object(file_name, sheet_name, ole_object_index, ole_object)
    	assert(response, message="Failed to update OLE object")
    end

    def test_delete_worksheet_ole_object
    	file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        ole_object_index = 0
    	response = @cells_api.delete_worksheet_ole_object(file_name, sheet_name, ole_object_index)
    	assert(response, message="Failed to delete OLE object")
    end

    def test_get_worksheet_pictures
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
        response = @cells_api.get_worksheet_pictures(file_name, sheet_name)
    	assert(response, message="Failed to read worksheet pictures")
    end

    def test_put_worksheet_add_picture
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)
        picture_path = "aspose-cloud.png"
        upload_file(picture_path)

        sheet_name = "Sheet6"
        upperLeftRow = 5
        upperLeftColumn = 5
        lowerRightRow = 10
        lowerRightColumn = 10
    	response = @cells_api.put_worksheet_add_picture(file_name, sheet_name, picture_path, {upperLeftRow: 5, upperLeftColumn: 5, lowerRightRow: 10, lowerRightColumn: 10})
    	assert(response, message="Failed to add a new worksheet picture")
    end

    def test_delete_work_sheet_pictures
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
    	response = @cells_api.delete_work_sheet_pictures(file_name, sheet_name)
    	assert(response, message="Failed to delete all pictures in worksheet")
    end

    def test_post_work_sheet_picture
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)
        pic_name = "aspose-cloud.png"
        upload_file(pic_name)

        sheet_name = "Sheet6"
        picture_index = 0
        picture = DrawingPicture.new
        picture.name = pic_name
        picture.rotation_angle = 90
    	response = @cells_api.post_work_sheet_picture(file_name, sheet_name, picture_index, picture)
    	assert(response, message="Failed to update worksheet picture by index")
    end

    def test_get_extract_barcodes
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
        picture_number = 0
    	response = @cells_api.get_extract_barcodes(file_name, sheet_name, picture_number)
    	assert(response, message="Failed to extract barcodes from worksheet picture")
    end

    def test_get_worksheet_pivot_tables
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
    	response = @cells_api.get_worksheet_pivot_tables(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet pivottables info")
    end

    def test_put_worksheet_pivot_table
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        create_pivot_table_request = CreatePivotTableRequest.new
        create_pivot_table_request.name = "MyPivot"
        create_pivot_table_request.source_data = "A5:E10"
        create_pivot_table_request.dest_cell_name = "H20"
        create_pivot_table_request.use_same_source = true
        create_pivot_table_request.pivot_field_rows = [1]
        create_pivot_table_request.pivot_field_columns = [1]
        create_pivot_table_request.pivot_field_data = [1]
     	response = @cells_api.put_worksheet_pivot_table(file_name, sheet_name, create_pivot_table_request)
    	assert(response, message="Failed to add a pivot table into worksheet")
    end

    def test_delete_worksheet_pivot_tables
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
    	response = @cells_api.delete_worksheet_pivot_tables(file_name, sheet_name)
    	assert(response, message="Failed to delete worksheet pivot tables")
    end

    def test_delete_worksheet_pivot_table
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
    	response = @cells_api.delete_worksheet_pivot_table(file_name, sheet_name, pivot_table_index)
    	assert(response, message="Failed to delete worksheet pivot table by index")
    end

    def test_post_worksheet_pivot_table_calculate
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
    	response = @cells_api.post_worksheet_pivot_table_calculate(file_name, sheet_name, pivot_table_index)
    	assert(response, message="Failed to calculates pivottable's data to cells")
    end

    def test_post_pivot_table_cell_style
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
        column = 1
        row = 1
        style = Style.new
        font = Font.new
        font.name = "Arial"
        font.size = 10
        style.font = font

    	response = @cells_api.post_pivot_table_cell_style(file_name, sheet_name, pivot_table_index, column, row, style)
    	assert(response, message="Failed to update cell style for pivot table")
    end

    def test_post_pivot_table_style
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
        style = Style.new
        font = Font.new
        font.name = "Arial"
        font.size = 10
        style.font = font
    	response = @cells_api.post_pivot_table_style(file_name, sheet_name, pivot_table_index, style)
    	assert(response, message="Failed to update style for pivot table")
    end

    def test_put_pivot_table_field
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
        pivot_field_type = "Row"
        pivot_table_field_request = PivotTableFieldRequest.new
        pivot_table_field_request.data = [1, 2]
    	response = @cells_api.put_pivot_table_field(file_name, sheet_name, pivot_table_index, pivot_field_type, pivot_table_field_request)
    	assert(response, message="Failed to add pivot field into into pivot table")
    end

    def test_get_pivot_table_field
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
        pivot_field_index = 0
        pivot_field_type = "Row"
    	response = @cells_api.get_pivot_table_field(file_name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type)
    	assert(response, message="Failed to get pivot field into pivot table")
    end

    def test_delete_pivot_table_field
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivot_table_index = 0
        pivot_field_type = "Row"
        pivot_table_field_request = PivotTableFieldRequest.new
        pivot_table_field_request.data = [1, 2]

    	response = @cells_api.delete_pivot_table_field(file_name, sheet_name, pivot_table_index, pivot_field_type, pivot_table_field_request)
    	assert(response, message="Failed to delete pivot field into pivot table")
    end

    def test_get_worksheet_pivot_table
    	file_name = "Sample_Pivot_Table_Example.xls"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        pivottable_index = 0
    	response = @cells_api.get_worksheet_pivot_table(file_name, sheet_name, pivottable_index)
    	assert(response, message="Failed to get worksheet pivot table info by index")
    end

    def test_post_move_worksheet
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        moving_request = WorksheetMovingRequest.new
        moving_request.destination_worksheet = "Sheet5"
        moving_request.position = "after"

    	response = @cells_api.post_move_worksheet(file_name, sheet_name, moving_request)
    	assert(response, message="Failed to move worksheet")
    end

    def test_put_protect_worksheet
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        protect_parameter = ProtectSheetParameter.new
        protect_parameter.protection_type = "All"
        protect_parameter.password = "123456"
    	response = @cells_api.put_protect_worksheet(file_name, sheet_name, protect_parameter)
    	assert(response, message="Failed to protect worksheet")
    end

    def test_delete_unprotect_worksheet
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)
        sheet_name = "Sheet1"

        protect_parameter = ProtectSheetParameter.new
        protect_parameter.protection_type = "None"
    	response = @cells_api.delete_unprotect_worksheet(file_name, sheet_name, protect_parameter)
    	assert(response, message="Failed to unprotect worksheet")
    end

    def test_post_rename_worksheet
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)
        sheet_name = "Sheet1"
        newname = "newSheet"

    	response = @cells_api.post_rename_worksheet(file_name, sheet_name, newname)
    	assert(response, message="Failed to rename worksheet")
    end

    def test_post_worsheet_text_replace
    	file_name = "myWorkbook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet2"
        old_value = "aspose"
        new_value = "aspose.com"
    	response = @cells_api.post_worsheet_text_replace(file_name, sheet_name, old_value, new_value)
    	assert(response, message="Failed to replace text")
    end

    def test_post_worksheet_range_sort
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        cell_area = "A5:A10"

        data_sorter = DataSorter.new
        data_sorter.case_sensitive = false
        data_sorter.has_headers = false
        data_sorter.sort_left_to_right = false

        sort_key = SortKey.new
        sort_key.key = 0
        sort_key.sort_order = "descending" 
        data_sorter.key_list = [sort_key]
        
    	response = @cells_api.post_worksheet_range_sort(file_name, sheet_name, cell_area, data_sorter)
    	assert(response, message="Failed to sort worksheet range")
    end

    def test_get_work_sheet_text_items
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
    	response = @cells_api.get_work_sheet_text_items(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet text items")
    end

    def test_get_work_sheet_validations
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet3"
    	response = @cells_api.get_work_sheet_validations(file_name, sheet_name)
    	assert(response, message="Failed to get worksheet validations")
    end

    def test_put_work_sheet_validation
    	file_name = "myWorkBook.xlsx"
    	upload_file(file_name)

        sheet_name = "Sheet1"            
    	response = @cells_api.put_work_sheet_validation(file_name, sheet_name, {range: "A1:C10"})
    	assert(response, message="Failed to add worksheet validation at index")
    end

    def test_get_work_sheet_validation
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet3"
        validation_index = 0
    	response = @cells_api.get_work_sheet_validation(file_name, sheet_name, validation_index)
    	assert(response, message="Failed to get worksheet validation by index")
    end

    def test_post_work_sheet_validation
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet3"
        validation_index = 0
    	response = @cells_api.post_work_sheet_validation(file_name, sheet_name, validation_index)
    	assert(response, message="Failed to update worksheet validation by index")
    end

    def test_delete_work_sheet_validation
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet3"
        validation_index = 0
    	response = @cells_api.delete_work_sheet_validation(file_name, sheet_name, validation_index)
    	assert(response, message="Failed to delete worksheet validation by index")
    end

    def test_put_change_visibility_worksheet
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet1"
        is_visible = false
    	response = @cells_api.put_change_visibility_worksheet(file_name, sheet_name, is_visible)
    	assert(response, message="Failed to change worksheet visibility")
    end

    def test_put_document_protect_from_changes
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

       password_request = PasswordRequest.new
        password_request.password = "aspose"
    	response = @cells_api.put_document_protect_from_changes(file_name, password_request)
    	assert(response, message="Failed to protect document from changes")
    end

    def test_delete_document_un_protect_from_changes
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

    	response = @cells_api.delete_document_un_protect_from_changes(file_name)
    	assert(response, message="Failed to unprotect document from changes")
    end

    def test_get_worksheet_picture
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
        picture_number = 0
     	response = @cells_api.get_worksheet_picture(file_name, sheet_name, picture_number)
    	assert(response, message="Failed to get worksheet picture by index")
    end

    def test_get_worksheet_picture_with_format
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
        picture_number = 0 
        format = "png"        
    	response = @cells_api.get_worksheet_picture_with_format(file_name, sheet_name, picture_number, format)
    	assert(response, message="Failed to read worksheet pictures")
    end

    def test_delete_worksheet_picture
    	file_name = "Sample_Test_Book.xls"
    	upload_file(file_name)

        sheet_name = "Sheet6"
        picture_index = 0
    	response = @cells_api.delete_worksheet_picture(file_name, sheet_name, picture_index)
    	assert(response, message="Failed to delete a picture from excel worksheet")
    end
end
