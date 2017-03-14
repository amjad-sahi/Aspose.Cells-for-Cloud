import asposecellscloud
from asposecellscloud.CellsApi import CellsApi
from asposecellscloud.CellsApi import ApiException
from asposecellscloud.models import OleObject

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
filename = "Embeded_OleObject_Sample_Book1.xlsx"
sheetName = "Sheet1"
oleObjectIndex = 0

sourceFileName = "Sample_Book2.xls"
imageFileName = "aspose-logo.png"

body  = OleObject.OleObject()
body.SourceFullName = sourceFileName
body.ImageSourceFullName = imageFileName
body.UpperLeftRow = 15
body.UpperLeftColumn = 5
body.Top = 10
body.Bottom = 10
body.Left = 10
body.Height = 400
body.Width = 400
body.IsAutoSize = True


#upload file to aspose cloud storage
storageApi.PutCreate(Path=filename, file=data_folder + filename)
storageApi.PutCreate(Path=sourceFileName, file=data_folder + sourceFileName)
storageApi.PutCreate(Path=imageFileName, file=data_folder + imageFileName)

try:
    #invoke Aspose.Cells Cloud SDK API to update a specific OleObject from a worksheet
    response = cellsApi.PostUpdateWorksheetOleObject(name=filename, sheetName=sheetName, oleObjectIndex=oleObjectIndex, body=body)

    if response.Status == "OK":
        #download Workbook from storage server
        response = storageApi.GetDownload(Path=filename)
        outfilename = "c:/temp/" + filename
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)
except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
