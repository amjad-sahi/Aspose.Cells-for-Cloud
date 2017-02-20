#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Set freeze panes
  def set_freeze_panes
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    row = 1
    column = 1 
    freezed_rows = 1 
    freezed_columns = 1
    response = @cells_api.put_worksheet_freeze_panes(file_name, sheet_name, row, column, freezed_rows, freezed_columns)
  end

end

worksheet = Worksheet.new()
puts worksheet.set_freeze_panes
#ExEnd: