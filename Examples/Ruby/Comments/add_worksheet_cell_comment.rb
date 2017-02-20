#ExStart:
require 'aspose_cells_cloud'

class Comment

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

  # Add worksheet's cell comment.
  def add_worksheet_cell_comment
    file_name = "myWorkbook.xlsx"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cell_name = "D18"
    comment = Comment.new
    comment.html_note = "<Font Style=\"FONT-WEIGHT: bold;FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">Sohail:</Font><Font Style=\"FONT-FAMILY: Calibri;FONT-SIZE: 9pt;COLOR: 000000;TEXT-ALIGN: left;\">\nShopping</Font>"
    comment.cell_name = "D18"
    response = @cells_api.put_work_sheet_comment(file_name, sheet_name, cell_name, comment)
  end

end

comment = Comment.new()
puts comment.add_worksheet_cell_comment
#ExEnd: