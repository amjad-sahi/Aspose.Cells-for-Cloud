import asposecellscloud
from asposecellscloud.CellsApi import CellsApi
from asposecellscloud.CellsApi import ApiException
from asposecellscloud.models import SaveOptions

import asposestoragecloud
from asposestoragecloud.StorageApi import StorageApi

apiKey = "XXXXX" #sepcify App Key
appSid = "XXXXX" #sepcify App SID
apiServer = "http://api.aspose.com/v1.1"
data_folder = "../../data/"

#Instantiate Aspose Storage API SDK
storage_apiClient = asposestoragecloud.ApiClient.ApiClient(apiKey, appSid, True)
storageApi = StorageApi(storage_apiClient)
#Instantiate Aspose Cells API SDK
api_client = asposecellscloud.ApiClient.ApiClient(apiKey, appSid, True)
cellsApi = CellsApi(api_client);

#set input file name
name = "Sample_Test_Book"
filename = name + ".xls"
format = "pdf"
outputfilename = name + "." + format

body = SaveOptions.SaveOptions()

#upload file to aspose cloud storage
storageApi.PutCreate(Path=filename, file=data_folder + filename)

try:
    #invoke Aspose.Cells Cloud SDK API to convert workbook to different file formats using cloud storage
    response = cellsApi.PostDocumentSaveAs(name=filename, body=body, newfilename=outputfilename)

    if response.Status == "OK":

        destfilename = response.SaveResult.DestDocument.Href
        print "FileName: " + destfilename
        #download Workbook from storage server
        response = storageApi.GetDownload(Path=destfilename)
        outfilename = "c:/temp/" +  destfilename
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
