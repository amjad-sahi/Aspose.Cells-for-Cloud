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

  # Update worksheet row.
  def update_worksheet_row
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    row_index = 1
    response = @cells_api.post_update_worksheet_row(file_name, sheet_name, row_index, {height: 25.0})
  end

end

row = Row.new()
puts row.update_worksheet_row
#ExEnd: