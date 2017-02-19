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

  # Add new chart to worksheet.
  def add_new_chart_to_worksheet
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    chart_type = "Bar"
    response = @cells_api.put_worksheet_add_chart(file_name, sheet_name, chart_type, {upperLeftRow: 12, upperLeftColumn: 12, lowerRightRow: 20, lowerRightColumn: 20, area: "B1:F2", isVertical: true, categoryData: "A1:A2", isAutoGetSerialName: true, title: "SalesState"})
  end

end

chart = Chart.new()
puts chart.add_new_chart_to_worksheet