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

  # Update chart legend
  def update_chart_legend
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet5"
    chart_index = 0
    charts_legend = ChartsLegend.new
    font = Font.new
    color = Color.new
    color.a = "1"
    color.r = "255"
    color.g = "0"
    color.b = "0"
    font.color = color
    font.double_size = 10.0
    font.is_bold = true
    font.is_italic = false
    font.is_strikeout = false
    font.is_subscript = false
    font.is_superscript = false
    font.name = "Arial"
    font.size = 10
    font.size = 15
    font.underline = "None"
    charts_legend.font = font
    charts_legend.shadow = true        

    response = @cells_api.post_worksheet_chart_legend(file_name, sheet_name, chart_index, charts_legend)
  end

end

chart = Chart.new()
puts chart.update_chart_legend
#ExEnd: