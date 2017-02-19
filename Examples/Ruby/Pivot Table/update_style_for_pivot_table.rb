require 'aspose_cells_cloud'

class PivotTable

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

  # Update style for pivot table
  def update_style_for_pivot_table
    file_name = "Sample_Pivot_Table_Example.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    pivot_table_index = 0
    style = Style.new
    font = Font.new
    font.name = "Arial"
    font.size = 10
    style.font = font
    response = @cells_api.post_pivot_table_style(file_name, sheet_name, pivot_table_index, style)
  end

end

pivotTable = PivotTable.new()
puts pivotTable.update_style_for_pivot_table