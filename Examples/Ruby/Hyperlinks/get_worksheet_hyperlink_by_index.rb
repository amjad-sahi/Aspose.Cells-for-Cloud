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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Get worksheet hyperlink by index.
  def get_worksheet_hyperlink_by_index
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    hyperlink_index = 0
    response = @cells_api.get_work_sheet_hyperlink(file_name, sheet_name, hyperlink_index)
  end

end

hyperlink = Hyperlink.new()
puts hyperlink.get_worksheet_hyperlink_by_index