#ExStart:
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
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Get chart in specified format.
  def get_chart_in_specified_format
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet5"
    chart_number = 0
    format = "png"
    response = @cells_api.get_worksheet_chart_with_format(file_name, sheet_name, chart_number, format)
  end

end

chart = Chart.new()
puts chart.get_chart_in_specified_format
#ExEnd: