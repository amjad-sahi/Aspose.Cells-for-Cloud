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

  # Read cell data by cell's name.
  def read_cell_data_by_cell_name
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cell_or_method_name = "A3"
    response = @cells_api.get_worksheet_cell(file_name, sheet_name, cell_or_method_name)
  end

end

cell = Cell.new()
puts cell.read_cell_data_by_cell_name