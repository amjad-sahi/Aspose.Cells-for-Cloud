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

  # Convert Excel Workbook to Different File Formats.
  def convert_excel_workbook_to_different_file_formats
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)
    response = @cells_api.get_work_book_with_format(file_name, "pdf")
  end

end

workbook = Workbook.new()
puts workbook.convert_excel_workbook_to_different_file_formats
#ExEnd: