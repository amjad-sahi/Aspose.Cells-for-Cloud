#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Create new workbook using different methods.
  def create_new_workbook
    response = @cells_api.put_workbook_create("newworkbook.xlsx")
  end

end

workbook = Workbook.new()
puts workbook.put_workbook_create
#ExEnd: