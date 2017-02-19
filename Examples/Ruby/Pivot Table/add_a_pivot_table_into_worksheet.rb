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

  # Add a pivot table into worksheet.
  def add_a_pivot_table_into_worksheet
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet1"
    create_pivot_table_request = CreatePivotTableRequest.new
    create_pivot_table_request.name = "MyPivot"
    create_pivot_table_request.source_data = "A5:E10"
    create_pivot_table_request.dest_cell_name = "H20"
    create_pivot_table_request.use_same_source = true
    create_pivot_table_request.pivot_field_rows = [1]
    create_pivot_table_request.pivot_field_columns = [1]
    create_pivot_table_request.pivot_field_data = [1]
    response = @cells_api.put_worksheet_pivot_table(file_name, sheet_name, create_pivot_table_request)
  end

end

pivotTable = PivotTable.new()
puts pivotTable.add_a_pivot_table_into_worksheet