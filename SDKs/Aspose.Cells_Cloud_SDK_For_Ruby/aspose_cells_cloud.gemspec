# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "aspose_cells_cloud/version"

Gem::Specification.new do |s|
  s.name        = "aspose_cells_cloud"
  s.version     = AsposeCellsCloud::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["M. Sohail Ismail"]
  s.email       = ["muhammad.sohail@aspose.com"]
  s.homepage    = "http://www.aspose.com/cloud/excel-api.aspx"
  s.summary     = %q{Aspose.Cells for Cloud}
  s.description = %q{Aspose.Cells for Cloud is a REST API that helps you create, manipulate and convert spreadsheets in the cloud. It allows you to work with all aspects of spreadsheets: worksheets, rows, columns, cells, text, data, images, links, comments, formulas, charts, and many more. Use Aspose.Cells for Cloud to create spreadsheets from scratch, manipulate spreadsheets, and convert spreadsheets to other formats. Render a spreadsheet to image formats such as JPEG, PNG, SVG, GIF and TIFF, or render charts and other objects to images. Aspose.Cells for Cloud allows you to convert a spreadsheet to different formats like PDF, XPS, TIFF and others. Use it to work with individual cells in a spreadsheet, or to add comments, hyperlinks and pictures to cells, or to apply validation rules. Aspose.Cells for Cloud also makes working with rows, columns and cells easy.}
  s.license     = "MIT"

  s.add_runtime_dependency 'typhoeus', '~> 0.8'
  s.add_runtime_dependency 'json', '~> 1.7'
  s.add_runtime_dependency 'aspose_storage_cloud', '~> 1.0', '>= 1.0.0'

  s.add_development_dependency 'minitest', '~> 5.8'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end