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

  # Unhide worksheet rows.
  def unhide_worksheet_rows
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    startrow = 1
    total_rows = 3
    response = @cells_api.post_unhide_worksheet_rows(file_name, sheet_name, startrow, total_rows, {height: 30.0})
  end

end

row = Row.new()
puts row.unhide_worksheet_rows