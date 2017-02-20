#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Read worksheet column data by column's index.
  def read_worksheet_column_data_by_index
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    column_index = 1
    response = @cells_api.get_worksheet_column(file_name, sheet_name, column_index)
  end

end

column = Column.new()
puts column.read_worksheet_column_data_by_index
#ExEnd: