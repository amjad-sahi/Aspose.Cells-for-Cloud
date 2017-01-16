require 'aspose_cells_cloud'

class Hyperlink

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

  def put_work_sheet_hyperlink
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    first_row = 1
    first_column = 1 
    total_rows = 2
    total_columns = 2
    address = "http://www.aspose.com/"
    response = @cells_api.put_work_sheet_hyperlink(file_name, sheet_name, first_row, first_column, total_rows, total_columns, address)
  end

end

hyperlink = Hyperlink.new()
puts hyperlink.put_work_sheet_hyperlink