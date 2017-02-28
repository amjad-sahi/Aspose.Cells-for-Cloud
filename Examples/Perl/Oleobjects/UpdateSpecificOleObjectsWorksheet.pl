#ExStart:1
use lib 'lib';
use strict;
use warnings;
use utf8;
use File::Slurp; # From CPAN
use JSON;

use AsposeStorageCloud::StorageApi;
use AsposeStorageCloud::ApiClient;
use AsposeStorageCloud::Configuration;
use AsposeCellsCloud::CellsApi;
use AsposeCellsCloud::ApiClient;
use AsposeCellsCloud::Configuration;
use AsposeCellsCloud::Object::OleObject;

my $configFile = '../Config/config.json';
my $configPropsText = read_file($configFile);
my $configProps = decode_json($configPropsText);
my $data_path = '../../../Data/';
my $out_path = $configProps->{'out_folder'};

$AsposeCellsCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeCellsCloud::Configuration::api_key = $configProps->{'api_key'};
$AsposeCellsCloud::Configuration::debug = 1;
$AsposeStorageCloud::Configuration::app_sid = $configProps->{'app_sid'};
$AsposeStorageCloud::Configuration::api_key = $configProps->{'api_key'};

# Instantiate Aspose.Storage and Aspose.Cells API SDK
my $storageApi = AsposeStorageCloud::StorageApi->new();
my $cellsApi = AsposeCellsCloud::CellsApi->new();

# Set input file name
my $name = 'Embeded_OleObject_Sample_Book1.xlsx';
	my $sheetName = 'Sheet1';
	my $oleObjectIndex = 0;
	my $sourceFileName = 'Sample_Book2.xls';
	my $imageFileName = 'aspose-logo.png';
	my @oleObjectBody = AsposeCellsCloud::Object::OleObject->new(
				'SourceFullName' => $sourceFileName,		
		        'ImageSourceFullName' => $imageFileName,
		        'UpperLeftRow' => 15,
		        'UpperLeftColumn' => 5,
		        'Top' => 10,
		        'Bottom' => 10,
		        'Left' => 10,
		        'Height' => 400,
		        'Width' => 400,
		        'IsAutoSize' => 'True'
		        );

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
$response = $storageApi->PutCreate(Path => $sourceFileName, file => $data_path.$sourceFileName);
$response = $storageApi->PutCreate(Path => $imageFileName, file => $data_path.$imageFileName);
# Invoke Aspose.Cells Cloud SDK API to update a specific OleObject from a worksheet                                 
$response = $cellsApi->PostUpdateWorksheetOleObject(name=> $name, sheetName=>$sheetName, oleObjectIndex=>$oleObjectIndex, body=>@oleObjectBody);

if($response->{'Status'} eq 'OK'){
	# Download updated Workbook from storage server 
	my $output_file = $out_path. $name;
	$response = $storageApi->GetDownload(Path => $name);;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
	
}
#ExEnd:1