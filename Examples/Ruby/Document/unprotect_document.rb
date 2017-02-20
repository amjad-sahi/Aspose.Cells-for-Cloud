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

  # Unprotect document.
  def unprotect_document
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    protection_request = WorkbookProtectionRequest.new
    protection_request.password = "password1234"
    response = @cells_api.delete_un_protect_document(file_name, protection_request)
  end

end

document = Document.new()
puts document.unprotect_document
#ExEnd: