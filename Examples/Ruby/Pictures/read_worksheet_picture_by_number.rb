#ExStart:
require 'aspose_cells_cloud'

class Picture

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

  # Read worksheet picture by number.
  def read_worksheet_picture_by_number
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet6"
    picture_number = 0
    response = @cells_api.get_worksheet_picture(file_name, sheet_name, picture_number)
  end

end

picture = Picture.new()
puts picture.read_worksheet_picture_by_number
#ExEnd: