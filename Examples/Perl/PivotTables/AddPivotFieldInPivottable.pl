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
use AsposeCellsCloud::Object::PivotTableFieldRequest;

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
my $name = 'Sample_Pivot_Table_Example.xls';
my $sheetName = 'Sheet2';
my $pivotTableIndex = 0;
my $pivotFieldType = "Row";
my @pivotTableFieldRequest = AsposeCellsCloud::Object::PivotTableFieldRequest->new( 'Data' => [1,2]);

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
# Invoke Aspose.Cells Cloud SDK API to add pivot field into pivot table		                           
$response = $cellsApi->PostPivotTableStyle(name=> $name, sheetName=>$sheetName, pivotTableIndex=>$pivotTableIndex, pivotFieldType=>$pivotFieldType, body=>@pivotTableFieldRequest);

if($response->{'Status'} eq 'OK'){
	# Download updated Workbook from storage server 
	my $output_file = $out_path. $name;
	$response = $storageApi->GetDownload(Path => $name);;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1