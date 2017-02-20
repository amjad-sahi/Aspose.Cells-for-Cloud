#ExStart:
require 'aspose_cells_cloud'

class Document

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

  # Read document property by name.
  def read_document_property_by_name
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    property_name = "Title"
    response = @cells_api.get_document_property(file_name, property_name)
  end

end

document = Document.new()
puts document.read_document_property_by_name
#ExEnd: