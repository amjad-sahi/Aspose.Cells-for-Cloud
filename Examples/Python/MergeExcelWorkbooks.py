import asposecellscloud
from asposecellscloud.CellsApi import CellsApi
from asposecellscloud.CellsApi import ApiException

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
filename = "Sample_Book1.xlsx"
mergeWith = "Sample_Book2.xls"

#upload file to aspose cloud storage
storageApi.PutCreate(Path=filename, file=data_folder + filename)
#upload mergeWith file to aspose cloud storage
storageApi.PutCreate(Path=mergeWith, file=data_folder + mergeWith)

try:
    #invoke Aspose.Cells Cloud SDK API to merge multiple workbooks into a single workbook
    response = cellsApi.PostWorkbooksMerge(name=filename, mergeWith=mergeWith)

    if response.Status == "OK":
        destFileName = response.Workbook.FileName
        print "FileName " + destFileName
        #download Workbook from storage server
        response = storageApi.GetDownload(Path=destFileName)
        outfilename = "c:/temp/" + destFileName
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
