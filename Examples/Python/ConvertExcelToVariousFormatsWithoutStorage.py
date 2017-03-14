import asposecellscloud
from asposecellscloud.CellsApi import CellsApi
from asposecellscloud.CellsApi import ApiException
from asposecellscloud.models import SaveOptions

apiKey = "XXXXX" #sepcify App Key
appSid = "XXXXX" #sepcify App SID
apiServer = "http://api.aspose.com/v1.1"
data_folder = "../../data/"

#Instantiate Aspose Cells API SDK
api_client = asposecellscloud.ApiClient.ApiClient(apiKey, appSid, True)
cellsApi = CellsApi(api_client);

#set input file name
name = "Sample_Test_Book"
filename = name + ".xls"
format = "pdf"
outputfilename = name + "." + format

try:
    #invoke Aspose.Cells Cloud SDK API to convert workbook to different file formats without storage
    response = cellsApi.PutConvertWorkBook(file=data_folder + filename, data=data_folder + "Sample_SaveOption_Data.xml", format=format)

    if response.Status == "OK":
        #download Workbook from response stream
        outfilename = "c:/temp/" +  outputfilename
        with open(outfilename, 'wb') as f:
                    for chunk in response.InputStream:
                        f.write(chunk)

except ApiException as ex:
            print "ApiException:"
            print "Code:" + str(ex.code)
            print "Message:" + ex.message
