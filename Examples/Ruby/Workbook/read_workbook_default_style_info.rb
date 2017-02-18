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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Read workbook default style info.
  def read_workbook_default_style_info
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)
    response = @cells_api.get_work_book_default_style(file_name)
  end

end

workbook = Workbook.new()
puts workbook.read_workbook_default_style_info