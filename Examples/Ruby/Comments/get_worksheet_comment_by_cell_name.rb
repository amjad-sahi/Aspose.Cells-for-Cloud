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

  # Get worksheet comment by cell name.
  def get_worksheet_comment_by_cell_name
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    cell_name = "A4"
    response = @cells_api.get_work_sheet_comment(file_name, sheet_name, cell_name)
  end

end

comment = Comment.new()
puts comment.get_worksheet_comment_by_cell_name
#ExEnd: