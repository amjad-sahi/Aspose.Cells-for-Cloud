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

  # Copy cell into cell
  def copy_cell_into_cell
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    dest_cell_name = "C5"
    sheet_name = "Sheet1"
    worksheet = "Sheet1"
    response = @cells_api.post_copy_cell_into_cell(file_name, dest_cell_name, sheet_name, worksheet, {cellname: "A5"})
  end

end

cell = Cell.new()
puts cell.copy_cell_into_cell