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

  # Read cell's style info.
  def get_worksheet_cell_style
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cell_name = "A7"
    response = @cells_api.get_worksheet_cell_style(file_name, sheet_name, cell_name)
  end

end

cell = Cell.new()
puts cell.get_worksheet_cell_style