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

  # Replace text.
  def replace_text
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    old_value = "Averages"
    new_value = "Median"
    response = @cells_api.post_workbooks_text_replace(file_name, old_value, new_value)
  end

end

workbook = Workbook.new()
puts workbook.replace_text
#ExEnd: