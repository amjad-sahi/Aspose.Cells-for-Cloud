#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Delete OLE object
  def delete_ole_object
    file_name = "Embeded_OleObject_Sample_Book1.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    ole_object_index = 0
    response = @cells_api.delete_worksheet_ole_object(file_name, sheet_name, ole_object_index)
  end

end

oleObject = OLEObject.new()
puts oleObject.delete_ole_object
#ExEnd: