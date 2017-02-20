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

  # Add a new worksheet picture.
  def add_a_new_worksheet_picture
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)
    picture_path = "aspose-cloud.png"
    upload_file(picture_path)

    sheet_name = "Sheet6"
    upperLeftRow = 5
    upperLeftColumn = 5
    lowerRightRow = 10
    lowerRightColumn = 10
    response = @cells_api.put_worksheet_add_picture(file_name, sheet_name, picture_path, {upperLeftRow: 5, upperLeftColumn: 5, lowerRightRow: 10, lowerRightColumn: 10})
  end

end

picture = Picture.new()
puts picture.add_a_new_worksheet_picture
#ExEnd: