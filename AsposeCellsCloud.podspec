Pod::Spec.new do |s|
  s.name         = "AsposeCellsCloud"
  s.version      = "0.0.1"
  s.summary      = "Aspose.Cells for Cloud"
  s.description  = <<-DESC
                    Aspose.Cells for Cloud is a REST API that helps you create, manipulate and convert spreadsheets in the cloud. It allows you to work with all aspects of spreadsheets: worksheets, rows, columns, cells, text, data, images, links, comments, formulas, charts, and many more. Use Aspose.Cells for Cloud to create spreadsheets from scratch, manipulate spreadsheets, and convert spreadsheets to other formats. Render a spreadsheet to image formats such as JPEG, PNG, SVG, GIF and TIFF, or render charts and other objects to images. Aspose.Cells for Cloud allows you to convert a spreadsheet to different formats like PDF, XPS, TIFF and others. Use it to work with individual cells in a spreadsheet, or to add comments, hyperlinks and pictures to cells, or to apply validation rules. Aspose.Cells for Cloud also makes working with rows, columns and cells easy.
                   DESC

  s.homepage     = "http://www.aspose.com/cloud/excel-api.aspx"
  s.license = { :type => 'MIT', :file => 'LICENSE'}
  s.author = { "M. Sohail Ismail" => "muhammad.sohail@aspose.com" }
  s.social_media_url = "https://www.facebook.com/asposeplugins/"
  s.platform = :ios, "7.0"
  s.source       = { :git => "https://github.com/asposecells/Aspose_Cells_Cloud.git", :tag => "0.0.1" }
  
  s.subspec 'model' do |ss|
      ss.source_files = 'SDKs/Aspose.Cells_Cloud_SDK_For_Objective_C/Aspose.Cells_Cloud_SDK_For_Objective_C/cells/model/*.{h,m}'
  end
  s.subspec 'api' do |ss|
      ss.dependency 'AsposeCellsCloud/model'
      ss.source_files = 'SDKs/Aspose.Cells_Cloud_SDK_For_Objective_C/Aspose.Cells_Cloud_SDK_For_Objective_C/cells/api/*.{h,m}'
  end
  
  s.dependency "AFNetworking", "~> 2.0"
  s.dependency "JSONModel", "~> 1.1"
  s.dependency "ISO8601", "~> 0.3"
  s.dependency "AsposeStorageCloud"

  s.requires_arc = true

end