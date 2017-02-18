require 'aspose_cells_cloud'

class Row

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

  # Delete worksheet row.
  def delete_worksheet_row
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    row_index = 1
    response = @cells_api.delete_worksheet_row(file_name, sheet_name, row_index)
  end

end

row = Row.new()
puts row.delete_worksheet_row