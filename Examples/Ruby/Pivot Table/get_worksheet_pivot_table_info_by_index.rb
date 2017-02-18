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

  # Get worksheet pivottable info by index.
  def get_worksheet_pivot_table_info_by_index
    file_name = "Sample_Pivot_Table_Example.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    pivottable_index = 0
    response = @cells_api.get_worksheet_pivot_table(file_name, sheet_name, pivottable_index)
  end

end

pivotTable = PivotTable.new()
puts pivotTable.get_worksheet_pivot_table_info_by_index