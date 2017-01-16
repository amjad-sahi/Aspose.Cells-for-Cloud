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

  def delete_worksheet_rows
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    startrow = 2
    response = @cells_api.delete_worksheet_rows(file_name, sheet_name, startrow, {totalRows: 5, updateReference: true})
  end

end

row = Row.new()
puts row.delete_worksheet_rows