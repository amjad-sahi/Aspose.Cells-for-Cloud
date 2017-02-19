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

  # Protect document from changes.
  def protect_document_from_changes
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    password_request = PasswordRequest.new
    password_request.password = "aspose"
    response = @cells_api.put_document_protect_from_changes(file_name, password_request)
  end

end

document = Document.new()
puts document.protect_document_from_changes