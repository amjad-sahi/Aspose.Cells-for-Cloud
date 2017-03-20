import asposecellscloud
from asposecellscloud.CellsApi import CellsApi
from asposecellscloud.CellsApi import ApiException
from asposecellscloud.models import SaveOptions

import asposestoragecloud
from asposestoragecloud.StorageApi import StorageApi

import random
import string

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
filename = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(8)) + ".xls"

#The template file, if the data not provided default workbook is created.
templatefile = "Sample_Test_Book.xls"

#upload template file to aspose cloud storage
storageApi.PutCreate(Path=templatefile, file=data_folder + templatefile)

try:
    #invoke Aspose.Cells Cloud SDK API to create a workbook from a template file
    response = cellsApi.PutWorkbookCreate(name=filename, file=None, templateFile=templatefile)

    if response.Status == "OK":

        outputfilename = response.Workbook.FileName
        print "FileName: " + outputfilename
        #download Workbook from storage server
        response = storageApi.GetDownload(Path=outputfilename)
        outfilename = "c:/temp/" +  outputfilename
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)


except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
