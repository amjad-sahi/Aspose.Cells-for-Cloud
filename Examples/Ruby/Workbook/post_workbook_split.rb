require 'aspose_cells_cloud'

class Workbook

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

  def post_workbook_split
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    response = @cells_api.post_workbook_split(file_name, {format: "png", from: 1, to: 1})
  end

end

workbook = Workbook.new()
puts workbook.post_workbook_split