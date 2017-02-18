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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Decrypt document
  def decrypt_document
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    encryption_request = WorkbookEncryptionRequest.new
    encryption_request.password = "password1234"
    response = @cells_api.delete_decrypt_document(file_name, encryption_request)
  end

end

document = Document.new()
puts document.decrypt_document