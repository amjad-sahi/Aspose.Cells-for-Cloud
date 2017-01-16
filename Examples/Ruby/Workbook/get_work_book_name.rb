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

  def get_work_book_name
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    name_name = "TestRange"
    response = @cells_api.get_work_book_name(file_name, name_name)
  end

end

workbook = Workbook.new()
puts workbook.get_work_book_name