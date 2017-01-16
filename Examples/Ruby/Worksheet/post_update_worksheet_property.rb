require 'aspose_cells_cloud'

class Worksheet

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def post_update_worksheet_property
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
  end

end

worksheet = Worksheet.new()
puts worksheet.post_update_worksheet_property