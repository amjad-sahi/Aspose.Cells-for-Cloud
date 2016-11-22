# Aspose.Cells Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud Cells APIs](http://api.aspose.com/v1.1/swagger/ui/index) in your web apps.

##How to use the SDK?
The complete source code is available in this repository folder, you can either directly use it in your project or use RubyGems. For more details, please visit our [documentation website](http://www.aspose.com/docs/display/cellscloud/Available+SDKs).



## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_cells_cloud'

class CellsUsage
  
  include AsposeCellsCloud
  include AsposeStorageCloud
	
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @cells_api = CellsApi.new  
  end
  
  def convert_work_book_to_pdf
    #Convert workbook from request content to PDF format.
    file_name = "myWorkbook.xlsx"
    convert_to_format = "pdf"
    response = @cells_api.put_convert_work_book(File.open("data/" << file_name,"r") { |io| io.read }, {format: convert_to_format})
  end
  
end
```
## Unit Tests
Aspose Cells SDK includes a suite of unit tests within the [test](https://github.com/asposecells/Aspose_Cells_Cloud/blob/master/SDKs/Aspose.Cells_Cloud_SDK_For_Ruby/test/cells_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose Cells SDK.

##Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://www.aspose.com/community/forums/).
