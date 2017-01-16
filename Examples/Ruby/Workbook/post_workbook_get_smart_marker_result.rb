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

  def post_workbook_get_smart_marker_result
    file_name = "Sample_SmartMarker.xlsx"
    upload_file(file_name)
    data_file = "Sample_SmartMarker_Data.xml"

    response = @cells_api.post_workbook_get_smart_marker_result(file_name, File.open("../data/" << data_file,"r") { |io| io.read })
  end

end

workbook = Workbook.new()
puts workbook.post_workbook_get_smart_marker_result