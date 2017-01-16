require 'aspose_cells_cloud'

class Document

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("da77c9f5da014d91faf2961ecec2de66", "B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def put_document_property
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    property_name = "Title"
    cells_document_property = CellsDocumentProperty.new
    cells_document_property.name = "Title"
    cells_document_property.value = "Tax Reforms"
    response = @cells_api.put_document_property(file_name, property_name, cells_document_property)
  end

end

document = Document.new()
puts document.put_document_property