require 'aspose_cells_cloud'

class Workbook

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

  # Convert document and save result to storage.
  def convert_document_and_save_result_to_storage
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    save_options = SavingSaveOptions.new
    save_options.clear_data = true
    response = @cells_api.post_document_save_as(file_name, save_options, {newfilename: "updatedWorkbook.xlsx", isAutoFitRows: true, isAutoFitColumns: true})
  end

end

workbook = Workbook.new()
puts workbook.convert_document_and_save_result_to_storage