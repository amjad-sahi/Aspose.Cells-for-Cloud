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
use AsposeCellsCloud::Object::CellsDocumentProperty;

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
my $filename = "Sample_Test_Book";
my $name = $filename . ".xls";
my $sheetName = "Sheet4";
my $autoshapeNumber = 1;          
my $format = "png";

my @cellsDocumentPropertyBody = AsposeCellsCloud::Object::CellsDocumentProperty->new('Name' => 'AsposeAuthor', 'Value' => 'Aspose Plugin Developer', 'BuiltIn'=> 'False');

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);
# Invoke Aspose.Cells Cloud SDK API to convert an autoshape to image                           
$response = $cellsApi->GetWorksheetAutoshapeWithFormat(name=> $name, sheetName=>$sheetName, autoshapeNumber=>$autoshapeNumber, format=>$format);
if($response->{'Status'} eq 'OK'){
	# Download image from response stream 
	my $output_file = $out_path. $filename . $autoshapeNumber . "." . $format;
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1