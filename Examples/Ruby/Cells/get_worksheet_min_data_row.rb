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

  def get_worksheet_min_data_row
      file_name = "Sample_Test_Book.xls"
      upload_file(file_name)
      
      sheet_name = "Sheet2"
      cell_or_method_name = "mindatarow"
      response = @cells_api.get_worksheet_cell(file_name, sheet_name, cell_or_method_name)
  end

end

cell = Cell.new()
puts cell.get_worksheet_min_data_row
#ExEnd: