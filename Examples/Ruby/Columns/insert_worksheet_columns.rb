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

  # Insert worksheet columns.
  def insert_worksheet_columns
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    column_index = 5
    columns = 3
    response = @cells_api.put_insert_worksheet_columns(file_name, sheet_name, column_index, columns, {updateReference: true})
  end

end

column = Column.new()
puts column.insert_worksheet_columns