#ExStart:
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

  # Convert workbook from request content to some format.
  def convert_workbook_from_request_content
    file_name = "myWorkbook.xlsx"
    convert_to_format = "pdf"
    response = @cells_api.put_convert_work_book(File.open("../../../data/" << file_name,"r") { |io| io.read }, {format: convert_to_format})
  end

end

workbook = Workbook.new()
puts workbook.convert_workbook_from_request_content
#ExEnd: