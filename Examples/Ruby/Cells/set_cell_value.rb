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

  # Set cell value.
  def set_cell_value
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cell_name = "A3"
    response = @cells_api.post_worksheet_cell_set_value(file_name, sheet_name, cell_name, {value: "1234", type: "string", formula: "sum(a1,a2)"})
  end

end

cell = Cell.new()
puts cell.set_cell_value