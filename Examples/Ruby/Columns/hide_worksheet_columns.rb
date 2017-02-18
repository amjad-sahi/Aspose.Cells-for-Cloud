require 'aspose_cells_cloud'

class Column

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

  # Hide worksheet columns.
  def hide_worksheet_columns
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    start_column = 0
    total_columns = 1
    response = @cells_api.post_hide_worksheet_columns(file_name, sheet_name, start_column, total_columns)
  end

end

column = Column.new()
puts column.hide_worksheet_columns