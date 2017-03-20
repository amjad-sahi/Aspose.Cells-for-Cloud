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
filename = "Sample_Test_Book.xls"
sheetName = "Sheet1"
upperLeftRow = 5
upperLeftColumn = 5
lowerRightRow = 10
lowerRightColumn = 10
picturePath = "aspose-cloud.png"

#upload file to aspose cloud storage
storageApi.PutCreate(Path=filename, file=data_folder + filename)
storageApi.PutCreate(Path=picturePath, file=data_folder + picturePath)


try:
    #invoke Aspose.Cells Cloud SDK API to add a picture to a worksheet
    response = cellsApi.PutWorksheetAddPicture(name=filename, sheetName=sheetName, file=None, picturePath=picturePath, upperLeftRow=upperLeftRow, upperLeftColumn=upperLeftColumn,lowerRightRow=lowerRightRow, lowerRightColumn=lowerRightColumn )

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
