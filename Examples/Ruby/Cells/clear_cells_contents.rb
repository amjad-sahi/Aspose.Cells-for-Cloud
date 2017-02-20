#ExStart:
require 'aspose_cells_cloud'

class Cell

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

  # Clear cells contents.
  def clear_cells_contents
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    response = @cells_api.post_clear_contents(file_name, sheet_name, {range: "A2:C11", startRow: 2, startColumn: 1, endRow: 11, endColumn: 3})
  end

end

cell = Cell.new()
puts cell.clear_cells_contents
#ExEnd: