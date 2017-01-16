require 'aspose_cells_cloud'

class Workbook

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("da77c9f5da014d91faf2961ecec2de66", "B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def post_workbooks_text_search
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    text = "aspose"
    response = @cells_api.post_workbooks_text_search(file_name, text)
  end

end

workbook = Workbook.new()
puts workbook.post_workbooks_text_search