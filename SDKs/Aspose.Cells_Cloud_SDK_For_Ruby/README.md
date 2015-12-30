# Aspose.Storage Cloud SDK For Ruby
This SDK lets you use [Aspose Cloud Storage APIs](http://api.aspose.com/v1.1/swagger/ui/index) in your web apps.

## Installing
You can simply install AsposeStorageCloud with gem:

`gem install aspose_storage_cloud`

## Usage
APIs of this SDK can be called as follows:

```ruby
require 'aspose_storage_cloud'

class Storage

  include AsposeStorageCloud
  
  def initialize
    #Get App key and App SID from https://cloud.aspose.com
    AsposeApp.app_key_and_sid("APP_KEY", "APP_SID")
    @storage_api = StorageApi.new  
  end
  
  def get_aspose_disc_usage
    #Check the disk usage of the current account.
    disc_usage_response = @storage_api.get_disc_usage()
    puts "Used Size: #{disc_usage_response.disc_usage.used_size} Total Size: #{disc_usage_response.disc_usage.total_size}"
  end
  
end
```
## Unit Tests
Aspose Storage SDK includes a suite of unit tests within the [test](https://github.com/asposetotal/Aspose_Total_Cloud/blob/master/SDKs/Aspose.Storage_Cloud_SDK_For_Ruby/test/storage_tests.rb) subdirectory. These Unit Tests also serves as examples of how to use the Aspose Storage SDK.

## Contact
Your feedback is very important to us. Please email us all your queries and feedback at marketplace@aspose.com.

## License
Aspose Storage SDK is available under the MIT license. See the [LICENSE](https://github.com/asposetotal/Aspose_Total_Cloud/blob/master/SDKs/Aspose.Storage_Cloud_SDK_For_Ruby/LICENSE) file for more info.
