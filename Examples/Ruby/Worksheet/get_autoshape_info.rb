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

  # Get autoshape info.
  def get_autoshape_info
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet4"
    autoshape_number = 1
    response = @cells_api.get_worksheet_autoshape(file_name, sheet_name, autoshape_number)
  end

end

worksheet = Worksheet.new()
puts worksheet.get_autoshape_info
#ExEnd: