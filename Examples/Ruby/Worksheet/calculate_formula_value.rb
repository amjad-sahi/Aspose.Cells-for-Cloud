require 'aspose_cells_cloud'

class Worksheet

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

  # Calculate formula value.
  def calculate_formula_value
    file_name = "Sample_Test_Book.xls"
    upload_file(file_name)

    sheet_name = "Sheet2"
    formula = "SUM(A5:A10)"
    response = @cells_api.get_work_sheet_calculate_formula(file_name, sheet_name, formula)
  end

end

worksheet = Worksheet.new()
puts worksheet.calculate_formula_value