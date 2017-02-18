require 'aspose_cells_cloud'

class Chart

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

  # Get worksheet charts info.
  def get_worksheet_charts_info
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    response = @cells_api.get_worksheet_charts(file_name, sheet_name)
  end

end

chart = Chart.new()
puts chart.get_worksheet_charts_info