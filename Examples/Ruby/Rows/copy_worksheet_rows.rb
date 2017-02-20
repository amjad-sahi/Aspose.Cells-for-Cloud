#ExStart:
require 'aspose_cells_cloud'

class Row

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

  # Copy worksheet rows.
  def copy_worksheet_rows
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    source_row_index = 5
    destination_row_index = 7
    row_number = 3
    response = @cells_api.post_copy_worksheet_rows(file_name, sheet_name, source_row_index, destination_row_index, row_number)
  end

end

row = Row.new()
puts row.copy_worksheet_rows
#ExEnd: