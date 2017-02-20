#ExStart:
require 'aspose_cells_cloud'

class Worksheet

  include AsposeCellsCloud
  include AsposeStorageCloud

  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("da77c9f5da014d91faf2961ecec2de66", "B01A15E5-1B83-4B9A-8EB3-0F2BFA6AC766")
    @cells_api = CellsApi.new  
  end

  def upload_file(file_name)
    @storage_api = StorageApi.new 
    response = @storage_api.put_create(file_name, File.open("../../../data/" << file_name,"r") { |io| io.read } )
  end

  # Sort worksheet range.
  def sort_worksheet_range
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet1"
    cell_area = "A5:A10"

    data_sorter = DataSorter.new
    data_sorter.case_sensitive = false
    data_sorter.has_headers = false
    data_sorter.sort_left_to_right = false

    sort_key = SortKey.new
    sort_key.key = 0
    sort_key.sort_order = "descending" 
    data_sorter.key_list = [sort_key]
        
    response = @cells_api.post_worksheet_range_sort(file_name, sheet_name, cell_area, data_sorter)
  end

end

worksheet = Worksheet.new()
puts worksheet.sort_worksheet_range
#ExEnd: