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

  # Update worksheet picture by index.
  def update_worksheet_picture_by_index
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)
    pic_name = "aspose-cloud.png"
    upload_file(pic_name)

    sheet_name = "Sheet6"
    picture_index = 0
    picture = DrawingPicture.new
    picture.name = pic_name
    picture.rotation_angle = 90
    response = @cells_api.post_work_sheet_picture(file_name, sheet_name, picture_index, picture)
  end

end

picture = Picture.new()
puts picture.update_worksheet_picture_by_index
#ExEnd: