#ExStart:
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

  # Get pivot field into pivot table
  def get_pivot_table_field
    file_name = "Sample_Pivot_Table_Example.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    pivot_table_index = 0
    pivot_field_index = 0
    pivot_field_type = "Row"
    response = @cells_api.get_pivot_table_field(file_name, sheet_name, pivot_table_index, pivot_field_index, pivot_field_type)
  end

end

pivotTable = PivotTable.new()
puts pivotTable.get_pivot_table_field
#ExEnd: