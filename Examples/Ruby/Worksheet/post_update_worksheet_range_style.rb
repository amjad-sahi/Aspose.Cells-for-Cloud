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

  def post_update_worksheet_range_style
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    range = "A1:C4" 
    style = Style.new
    font = Font.new
    font.double_size = 20
    font.is_bold = true
    font.is_italic = true
    font.is_strikeout = true
    font.size = 15

    style.font = font
    style.shrink_to_fit = true

    background_color = Color.new
    background_color.r = "255"
    background_color.g = "255"
    background_color.b = "255"
    style.background_color = background_color

    response = @cells_api.post_update_worksheet_range_style(file_name, sheet_name, range, style)
  end

end

worksheet = Worksheet.new()
puts worksheet.post_update_worksheet_range_style