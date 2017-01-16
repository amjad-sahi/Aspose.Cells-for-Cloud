require 'aspose_cells_cloud'

class Row

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

  def post_row_style
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    row_index = 1 
    row_style = Style.new
    background_color = Color.new
    background_color.a = "1"
    background_color.r = "245"
    background_color.g = "200"
    background_color.b = "178"
    row_style.background_color = background_color

    response = @cells_api.post_row_style(file_name, sheet_name, row_index, row_style)
  end

end

row = Row.new()
puts row.post_row_style