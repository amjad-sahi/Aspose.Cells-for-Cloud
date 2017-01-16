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
    response = @storage_api.put_create(file_name, File.open("../data/" << file_name,"r") { |io| io.read } )
  end

  def post_work_sheet_comment
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    cell_name = "A4"
    comment = Comment.new
    comment.auto_size = true
    comment.note = "aspose"
    response = @cells_api.post_work_sheet_comment(file_name, sheet_name, cell_name, comment)
  end

end

comment = Comment.new()
puts comment.post_work_sheet_comment