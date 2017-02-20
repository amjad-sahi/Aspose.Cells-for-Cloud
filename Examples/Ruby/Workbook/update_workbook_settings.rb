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

  def update_workbook_settings
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    workbook_settings = WorkbookSettings.new
    workbook_settings.auto_compress_pictures = true
    workbook_settings.enable_macros = true
    workbook_settings.is_h_scroll_bar_visible = false

    response = @cells_api.post_workbook_settings(file_name, {settings: workbook_settings})
  end

end

workbook = Workbook.new()
puts workbook.update_workbook_settings
#ExEnd: