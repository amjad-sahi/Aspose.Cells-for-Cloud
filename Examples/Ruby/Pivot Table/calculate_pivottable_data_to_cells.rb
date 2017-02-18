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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  # Calculates pivottable's data to cells.
  def calculate_pivottable_data_to_cells
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet2"
    pivot_table_index = 0
    response = @cells_api.post_worksheet_pivot_table_calculate(file_name, sheet_name, pivot_table_index)
  end

end

pivotTable = PivotTable.new()
puts pivotTable.calculate_pivottable_data_to_cells