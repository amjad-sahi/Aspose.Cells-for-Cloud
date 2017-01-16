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

  def delete_worksheet_columns
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet1"
    column_index = 1
    columns = 10
    update_reference = true
    response = @cells_api.delete_worksheet_columns(file_name, sheet_name, column_index, columns, update_reference)
  end

end

column = Column.new()
puts column.delete_worksheet_columns