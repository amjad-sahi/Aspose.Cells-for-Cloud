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
my $name = 'Sample_Test_Book.xls';
my $newfilename = 'Sample_Test_Book.pdf';
my $format = "pdf";
my @saveOptionsBody = AsposeCellsCloud::Object::SaveOptions->new('desiredPPI' => 300, 'jpegQuality'=>70, 'OnePagePerSheet'=>'True', 'SaveFormat'=>'pdf');

# Upload file to aspose cloud storage 
my $response = $storageApi->PutCreate(Path => $name, file => $data_path.$name);

# Invoke Aspose.Cells Cloud SDK API to convert workbook to different file formats using cloud storage            		                           
$response = $cellsApi->PostDocumentSaveAs(name=> $name, newfilename=>$newfilename, format=>$format, body=>@saveOptionsBody);

if($response->{'Status'} eq 'OK'){
	my $destfilename = $response->{'SaveResult'}->{'DestDocument'}->{'Href'};
	print("\n FileName: " . $destfilename);
	# Download updated Workbook from storage server 
	my $output_file = $out_path. $destfilename;
	$response = $storageApi->GetDownload(Path => $destfilename);
	write_file($output_file, { binmode => ":raw" }, $response->{'Content'});
}
#ExEnd:1