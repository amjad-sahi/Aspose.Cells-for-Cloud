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
my $name = 'Sample_Book1.xlsx';
my $mergeWith = 'Sample_Book2.xls';

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
$response = $storageApi->PutCreate(Path => $mergeWith, file => $data_path.$mergeWith);
# Invoke Aspose.Cells Cloud SDK API to merge multiple workbooks into a single workbook              		                           
$response = $cellsApi->PostWorkbooksMerge(name=> $name, mergeWith=>$mergeWith);

if($response->{'Status'} eq 'OK'){
	my $destFileName = $response->{'Workbook'}->{'FileName'};
	# Download updated Workbook from storage server 
	my $output_file = $out_path. $destFileName;
	$response = $storageApi->GetDownload(Path => $destFileName);;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1