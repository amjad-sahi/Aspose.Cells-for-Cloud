require 'aspose_cells_cloud'

class Worksheet

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

  # Replace text.
  def replace_text
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet2"
    old_value = "aspose"
    new_value = "aspose.com"
    response = @cells_api.post_worsheet_text_replace(file_name, sheet_name, old_value, new_value)
  end

end

worksheet = Worksheet.new()
puts worksheet.replace_text