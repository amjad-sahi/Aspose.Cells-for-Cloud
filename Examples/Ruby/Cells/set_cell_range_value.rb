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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Set cell range value
  def set_cell_range_value
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cellarea = "A10:B20"
    value = "1234"
    type = "int"
    response = @cells_api.post_set_cell_range_value(file_name, sheet_name, cellarea, value, type)
  end

end

cell = Cell.new()
puts cell.set_cell_range_value