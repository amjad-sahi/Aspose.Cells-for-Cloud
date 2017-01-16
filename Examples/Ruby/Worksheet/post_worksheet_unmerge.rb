require 'aspose_cells_cloud'

class Worksheet

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

  def post_worksheet_unmerge
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    start_row = 1
    start_column = 1
    total_rows = 5
    total_columns = 3
    response = @cells_api.post_worksheet_unmerge(file_name, sheet_name, start_row, start_column, total_rows, total_columns)
  end

end

worksheet = Worksheet.new()
puts worksheet.post_worksheet_unmerge