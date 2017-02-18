require 'aspose_cells_cloud'

class OLEObject

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

  # Add OLE object
  def add_ole_object
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    source_file_name = "Sample_Book2.xls"
    upload_file(source_file_name)

    image_file_name = "aspose-logo.png"
    upload_file(image_file_name)

    sheet_name = "Sheet1"
    ole_object = DrawingOleObject.new
    ole_object.source_full_name = source_file_name
    ole_object.image_source_full_name = image_file_name
    ole_object.upper_left_row = 15
    ole_object.upper_left_column = 5
    ole_object.top = 10
    ole_object.left = 10
    ole_object.height = 400
    ole_object.width = 400
    ole_object.is_auto_size = true
    response = @cells_api.put_worksheet_ole_object(file_name, sheet_name, ole_object)
  end

end

oleObject = OLEObject.new()
puts oleObject.add_ole_object