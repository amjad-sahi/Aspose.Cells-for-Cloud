require 'aspose_cells_cloud'

class Hyperlink

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

  def post_work_sheet_hyperlink
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    hyperlink_index = 0
    hyperlink = Hyperlink.new
    area = CellArea.new
    area.start_row = 1
    area.start_column = 1
    area.end_row = 3
    area.end_column = 3

    hyperlink.area = area
    hyperlink.address = "http://www.aspose.com/"
    hyperlink.text_to_display = "Aspose"
    response = @cells_api.post_work_sheet_hyperlink(file_name, sheet_name, hyperlink_index, hyperlink)
  end

end

hyperlink = Hyperlink.new()
puts hyperlink.post_work_sheet_hyperlink