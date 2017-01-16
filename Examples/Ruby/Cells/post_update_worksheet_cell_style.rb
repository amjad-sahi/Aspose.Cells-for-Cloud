require 'aspose_cells_cloud'

class Cell

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

  def post_update_worksheet_cell_style
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1" 
    cell_name = "A3"
    cell_style = Style.new
    font = Font.new
    font.double_size = 20
    font.is_bold = true
    font.is_italic = true
    font.is_strikeout = true
    font.size = 15

    cell_style.font = font
    cell_style.shrink_to_fit = true

    background_color = Color.new
    background_color.r = "255"
    background_color.g = "255"
    background_color.b = "255"
    cell_style.background_color = background_color

    response = @cells_api.post_update_worksheet_cell_style(file_name, sheet_name, cell_name, cell_style)
  end

end

cell = Cell.new()
puts cell.post_update_worksheet_cell_style
