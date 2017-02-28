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
use AsposeCellsCloud::Object::SaveOptions;

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
my $name = 'Sample_Test_Book_';
for (0..7) { $name .= chr( int(rand(25) + 65) ); }
$name .= '.xlsx';
# The template file, if the data not provided default workbook is created.
my $templatefile = 'Sample_SmartMarker.xlsx';
# Smart marker data file, if the data not provided the request content is checked for the data.
my $datafile = 'Sample_SmartMarker_Data.xml';

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $templatefile, file => $data_path.$templatefile);
$response = $storageApi->PutCreate(Path => $datafile, file => $data_path.$datafile);
# Invoke Aspose.Cells Cloud SDK API to create a workbook from a SmartMarker template              		                           
$response = $cellsApi->PutWorkbookCreate(name=> $name, templateFile=>$templatefile, dataFile=>$datafile);
if($response->{'Status'} eq 'OK'){
	my $outputfilename = $response->{'Workbook'}->{'FileName'};
	print("\n FileName: " . $outputfilename);
	# Download updated Workbook from storage server 
	my $output_file = $out_path. $outputfilename;
	$response = $storageApi->GetDownload(Path => $outputfilename);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1