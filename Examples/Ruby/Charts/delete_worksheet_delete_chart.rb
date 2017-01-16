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

  def delete_worksheet_delete_chart
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet5"
    chart_index = 0
    response = @cells_api.delete_worksheet_delete_chart(file_name, sheet_name, chart_index)
  end

end

chart = Chart.new()
puts chart.delete_worksheet_delete_chart