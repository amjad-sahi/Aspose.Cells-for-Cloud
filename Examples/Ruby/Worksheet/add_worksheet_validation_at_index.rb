#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Add worksheet validation at index.
  def add_worksheet_validation_at_index
    file_name = "myWorkBook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"            
    response = @cells_api.put_work_sheet_validation(file_name, sheet_name, {range: "A1:C10"})
  end

end

worksheet = Worksheet.new()
puts worksheet.add_worksheet_validation_at_index
#ExEnd: