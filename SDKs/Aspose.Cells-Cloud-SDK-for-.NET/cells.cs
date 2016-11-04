using System;
using System.Collections.Generic;
using System.Text;

using Com.Aspose.Storage.Api;
using Com.Aspose.Cells.Api;
using Com.Aspose.Cells.Model;

namespace AsposeCells
{
class cells
{
public static void Main(String[] args){

string APIKEY = "xxxxxxxxxxxxx";
string APPSID = "xxxxxxxxxxxxx";
string BASEPATH = "http://api.aspose.cloud/v1.1";

try
{
    //StorageApi storageApi = new StorageApi(APIKEY, APPSID, "http://api.aspose.com/v1.1");
    //CellsApi cellsApi = new CellsApi(APIKEY, APPSID, "http://api.aspose.com/v1.1");

                //System.Diagnostics.Debug.WriteLine(cellsApi.GetDocumentProperties("Embeded_OleObject_Sample_Book1.xlsx", null, null));

                //CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
                //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

                //string name = "Sample_Test_Book.xls";

                //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

                //string sheetName = "Sheet5";
                //int? chartIndex = 0;
                //string storage = null;
                //string folder = null;
                //Com.Aspose.Cells.Model.Title body = new Com.Aspose.Cells.Model.Title();
                ////body.Area = new Com.Aspose.Cells.Model.Area();
                ////body.Border = new Com.Aspose.Cells.Model.Line();
                ////body.Font = new Com.Aspose.Cells.Model.Font();
                ////body.link = new Com.Aspose.Cells.Model.Link();
                ////body.ShapeProperties = new System.Collections.Generic.List<Com.Aspose.Cells.Model.LinkElement> { new Com.Aspose.Cells.Model.LinkElement() };

                //body.Height = 200;

                //Com.Aspose.Cells.Model.TitleResponse actual;
                //actual = target.PutWorksheetChartTitle(name, sheetName, chartIndex, storage, folder, body);


}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("\nError:" + ex.Message + "\n" + ex.StackTrace + "\n");
}

///*
//*  Working with Workbook
//*  Convert Excel Workbook to Different File Formats
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book";
//String inputfileName = fileName + ".xls";
//String format = "pdf";
//String outputFileName = fileName + "." + format;
//Boolean isAutoFitRows = false;
//Boolean isAutoFitColumns = false;
//String storage = "";
//String folder = "";
//SaveOptions body = new SaveOptions();

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(inputfileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + inputfileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaveResponse apiResponse = cellsApi.PostDocumentSaveAs(inputfileName, outputFileName, isAutoFitRows, isAutoFitColumns, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK")){                
//        string destFileName = apiResponse.SaveResult.DestDocument.Href;
//        Console.WriteLine("File name:"+ destFileName);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Workbook
//*  Convert Excel Workbook to Different File Formats without using Storage 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book";
//String inputfileName = fileName + ".xls";
//String format = "pdf";
//String password = "";
//String outPath = "";
//String outputFileName = fileName + "." + format;

//byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + inputfileName);

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(inputfileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + inputfileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.PutConvertWorkBook(format, password, outPath, file);

//    if (apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("File Converted successfully to:" + outputFileName);
//        Console.ReadKey();
//    }
//    else
//    {
//        Console.WriteLine("status:" + apiResponse.Status);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Workbook
//*  Create an Empty Excel Workbook 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book" + new Random().Next(100) + ".xls";
////The template file, if the data not provided default workbook is created.
//String templateFile = null;
////Smart marker data file, if the data not provided the request content is checked for the data.
//String dataFile = null;
//byte[] file = null;

//String storage = null;
//String folder = null;

//try
//{

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorkbookResponse apiResponse = cellsApi.PutWorkbookCreate(fileName, templateFile, dataFile, storage, folder, file);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        String outPutFileName = apiResponse.Workbook.FileName;
//        Console.WriteLine("File name:" + outPutFileName);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Create Excel Workbook from a Template File 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book" + new Random().Next(100) + ".xls";
////The template file, if the data not provided default workbook is created.
//String templateFile = "Sample_Test_Book.xls";
////Smart marker data file, if the data not provided the request content is checked for the data.
//String dataFile = null;
//byte[] file = null;

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + templateFile));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorkbookResponse apiResponse = cellsApi.PutWorkbookCreate(fileName, templateFile, dataFile, storage, folder, file);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        String outPutFileName = apiResponse.Workbook.FileName;
//        Console.WriteLine("File name:" + outPutFileName);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Create Excel Workbook from a SmartMarker Template 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book" + new Random().Next(100) + ".xls";
////The template file, if the data not provided default workbook is created.
//String templateFile = "Sample_SmartMarker.xlsx";
////Smart marker data file, if the data not provided the request content is checked for the data.
//String dataFile = "Sample_SmartMarker_Data.xml";
//byte[] file = null;

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(templateFile, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + templateFile));

//    //upload SmartMarker template data file to aspose cloud storage
//    storageApi.PutCreate(dataFile, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + dataFile));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorkbookResponse apiResponse = cellsApi.PutWorkbookCreate(fileName, templateFile, dataFile, storage, folder, file);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        String outPutFileName = apiResponse.Workbook.FileName;
//        Console.WriteLine("File name:" + outPutFileName);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Workbook
//*  Merge Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Book1.xlsx";
//String mergeWith = "Sample_Book2.xls";
//String storage = "";
//String folder = "";

//try
//{

//    //upload file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //upload mergeWith file to aspose cloud storage
//    storageApi.PutCreate(mergeWith, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + mergeWith));


//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorkbookResponse apiResponse = cellsApi.PostWorkbooksMerge(fileName, mergeWith, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        String destFileName = apiResponse.Workbook.FileName;
//        Console.WriteLine("File name:" + destFileName);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Workbook
//*  Encrypt Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String storage = "";
//String folder = "";
//WorkbookEncryptionRequest body = new WorkbookEncryptionRequest();
//body.EncryptionType = "XOR";
//body.Password = "aspose";
//body.KeyLength = 128;


//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostEncryptDocument(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("File is Encrypted");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Decrypt Excel Workbooks
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String filePrefix = "encrypted_";
//String fileName = filePrefix + "Sample_Test_Book.xls";
//String storage = "";
//String folder = "";
//WorkbookEncryptionRequest body = new WorkbookEncryptionRequest();
//body.EncryptionType = "XOR";
//body.Password = "aspose";
//body.KeyLength = 128;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteDecryptDocument(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("File is Decrypted");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Protect Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String storage = "";
//String folder = "";
//WorkbookProtectionRequest body = new WorkbookProtectionRequest();
//body.Password = "aspose";
//body.ProtectionType = "All";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostProtectDocument(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Workbook is now protected");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Unprotect Excel Workbooks
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Protected_Test_Book.xls";
//String storage = "";
//String folder = "";
//WorkbookProtectionRequest body = new WorkbookProtectionRequest();
//body.Password = "aspose";
//body.ProtectionType = "All";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteUnProtectDocument(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Workbook is now un-protected");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Set Modify Password of Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String storage = "";
//String folder = "";
//PasswordRequest body = new PasswordRequest();
//body.Password = "aspose";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PutDocumentProtectFromChanges(fileName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Password is changed!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Workbook
//*  Clear Modify Password of Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "password_protected_Sample_Test_Book.xls";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteDocumentUnProtectFromChanges(fileName, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Password is removed");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Workbook
//*  Get Names Count from Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    NamesResponse apiResponse = cellsApi.GetWorkBookNames(fileName, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Names count:" + apiResponse.Names.Count);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Workbook
//*  Convert Excel Workbook with Additional Settings 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book";
//String inputfileName = fileName + ".xls";
//String format = "pdf";
//String password = "";
//String outPath = "";
//String outputFileName = fileName + "." + format;

//byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + inputfileName);

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(inputfileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + inputfileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.PutConvertWorkBook(format, password, outPath, file);

//    if (apiResponse.Status.Equals("Ok"))
//    {
//        Console.WriteLine("File Converted successfully to:" + outputFileName);
//        Console.ReadKey();
//    }
//    else
//    {
//        Console.WriteLine("status:" + apiResponse.Status);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Workbook
//*  Split Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//string fileName = "Sample_Test_Book.xls";
//string format = "png";
//int? from = null;
//int? to = null;
//int? horizontalResolution = null;
//int? verticalResolution = null;
//string storage = null;
//string folder = null; 

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SplitResultResponse apiResponse = cellsApi.PostWorkbookSplit(fileName, format, from, to, horizontalResolution, verticalResolution, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Workbook is splited!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Document Properties 
//*  Get All Document Properties  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Book1.xlsx";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CellsDocumentPropertiesResponse apiResponse = cellsApi.GetDocumentProperties(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (CellsDocumentProperty docProperty in apiResponse.DocumentProperties.DocumentPropertyList)
//        {
//            Console.WriteLine("Name: " + docProperty.Name);
//            Console.WriteLine("Value: " + docProperty.Value);
//            Console.WriteLine("BuiltIn: " + docProperty.BuiltIn);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Document Properties 
//*  Get a Particular Document Property  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Book1.xlsx";
//String propertyName = "Author";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CellsDocumentPropertyResponse apiResponse = cellsApi.GetDocumentProperty(fileName, propertyName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK")){
                
//        CellsDocumentProperty docProperty = apiResponse.DocumentProperty;
//        Console.WriteLine("Name: " + docProperty.Name);
//        Console.WriteLine("Value: " + docProperty.Value);
//        Console.WriteLine("BuiltIn: " + docProperty.BuiltIn);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Document Properties 
//*  Set a Particular Document Property 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

////set input file name
//String fileName = "Sample_Book1.xlsx";
//String propertyName = "AsposeAuthor";
//String storage = "";
//String folder = "";
//CellsDocumentProperty body = new CellsDocumentProperty();
//body.Name = "AsposeAuthor";
//body.Value = "Aspose Plugin Developer";
//body.BuiltIn = "false";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CellsDocumentPropertyResponse apiResponse = cellsApi.PutDocumentProperty(fileName, propertyName, storage, folder, body);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("New values for the Property have been changed!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Document Properties 
//*  Remove All Document Properties 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

////set input file name
//String fileName = "Sample_Book1.xlsx";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CellsDocumentPropertiesResponse apiResponse = cellsApi.DeleteDocumentProperties(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("All Properties have been removed!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Document Properties 
//*  Remove a Particular Document Property 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Book1.xlsx";
//String propertyName = "AsposeAuthor";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CellsDocumentPropertiesResponse apiResponse = cellsApi.DeleteDocumentProperty(fileName, propertyName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Property have been removed!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Add a New Excel Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2-new";
//String storage = "";
//String folder = "";

//try
//{
//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetsResponse apiResponse = cellsApi.PutAddNewWorksheet(fileName, sheetName, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Added a New Excel Worksheet!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


    ///*
    //*  Working with Worksheets 
    //*  Get Worksheet Count 
    //*/
    //CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
    //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

    //String fileName = "Sample_Test_Book.xls";
    //String storage = "";
    //String folder = "";

    //try
    //{
    //    //upload source file to aspose cloud storage
    //    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

    //    //invoke Aspose.Cells Cloud SDK API to append word document
    //    WorksheetsResponse apiResponse = cellsApi.GetWorkSheets(fileName, storage, folder);

    //    if (apiResponse != null && apiResponse.Status.Equals("OK"))
    //    {
    //        Console.WriteLine("Sheet Count: " + apiResponse.Worksheets.WorksheetList.Count);
    //        Console.ReadKey();
    //    }
    //}
    //catch (Exception ex)
    //{
    //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
    //}


///*
//*  Working with Worksheets 
//*  Hide Excel Worksheets  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//Boolean isVisible = false;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetResponse apiResponse = cellsApi.PutChangeVisibilityWorksheet(fileName, sheetName, isVisible, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Visibility Type: " + apiResponse.Worksheet.VisibilityType);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Unhide Excel Worksheets 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//Boolean isVisible = true;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetResponse apiResponse = cellsApi.PutChangeVisibilityWorksheet(fileName, sheetName, isVisible, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Visibility Type: " + apiResponse.Worksheet.VisibilityType);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Remove a Particular Document Property 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String storage = "";
//String folder = "";
//WorksheetMovingRequest body = new WorksheetMovingRequest();
//body.DestinationWorksheet = "Sheet5";
//body.Position = "after";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetsResponse apiResponse = cellsApi.PostMoveWorksheet(fileName, sheetName, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("WorkSheet moved!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Remove Worksheets from Excel Workbooks
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetsResponse apiResponse = cellsApi.DeleteWorksheet(fileName, sheetName, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Worksheet have been removed!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Get AutoShape from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet4";
//int autoshapeNumber = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    AutoShapeResponse apiResponse = cellsApi.GetWorksheetAutoshape(fileName, sheetName, autoshapeNumber, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        AutoShape autoShape = apiResponse.AutoShape;
//        Console.WriteLine(autoShape.HtmlText);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Get Comment from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//String cellName = "A4";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    CommentResponse apiResponse = cellsApi.GetWorkSheetComment(fileName, sheetName, cellName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Comment:"+apiResponse.Comment.Note);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Get Validation from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int validationIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ValidationResponse apiResponse = cellsApi.GetWorkSheetValidation(fileName, sheetName, validationIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Validation Type:"+apiResponse.Validation.Type);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Calculate Formula in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String formula = "SUM(A5:A10)";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SingleValueResponse apiResponse = cellsApi.GetWorkSheetCalculateFormula(fileName, sheetName, formula, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        SingleValue resultValue = apiResponse.Value;
//        Console.WriteLine("Calculated value:" + resultValue.Value);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Sort Worksheet Data 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String cellArea = "A5:A10";
//String storage = "";
//String folder = "";

//SortKey sort = new SortKey();
//sort.Key = 0;
//sort.SortOrder = "descending";

//DataSorter body = new DataSorter();
//body.CaseSensitive = "false";
//body.HasHeaders = "false";
//body.SortLeftToRight = "false";
//body.KeyList = new List<SortKey> {sort};

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostWorksheetRangeSort(fileName, sheetName, cellArea, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Worksheet data is sorted!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Convert Worksheet to Image 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book";
//String fileExtension = ".xls";
//String sheetName = "Sheet1";
//String format = "png";
//int? verticalResolution = null;
//int? horizontalResolution = null;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName + fileExtension));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.GetWorkSheetWithFormat(fileName + fileExtension, sheetName, format, verticalResolution, horizontalResolution, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Worksheet converted to Image!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Get Column from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int? columnIndex = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ColumnResponse apiResponse = cellsApi.GetWorksheetColumn(fileName, sheetName, columnIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Href:" + apiResponse.Column.link.Href);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Copy Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet7";
//String sourceSheet = "Sheet1";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostCopyWorksheet(fileName, sheetName, sourceSheet, folder, storage);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Excel Worksheet copied!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Rename Excel Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String newname = "newSheet";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostRenameWorksheet(fileName, sheetName, newname, folder, storage);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Rename Excel Worksheet!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Update Excel Worksheet Properties 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String folder = "";
//String storage = "";

//Worksheet body = new Worksheet();
//body.Type = "Worksheet";
//body.Name = "Sheet1";
//body.IsGridlinesVisible = true;
//body.IsPageBreakPreview = true;
//body.IsRulerVisible = true;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetResponse apiResponse = cellsApi.PostUpdateWorksheetProperty(fileName, sheetName, folder, storage, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Update Excel Worksheet Properties!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Set Background or Watermark for Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String folder = "";
//String storage = "";
//byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "aspose-cloud.png"); 

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PutWorkSheetBackground(fileName, sheetName, folder, storage, file);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Set Background or Watermark for Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Freeze Panes in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int row = 1;
//int column = 1;
//int freezedRows = 1;
//int freezedColumns = 1;
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PutWorksheetFreezePanes(fileName, sheetName, row, column, freezedRows, freezedColumns, folder, storage);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Freeze Panes in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Unfreeze Panes in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int row = 1;
//int column = 1;
//int freezedRows = 1;
//int freezedColumns = 1;
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetFreezePanes(fileName, sheetName, row, column, freezedRows, freezedColumns, folder, storage);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Unfreeze Panes in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Worksheets 
//*  Delete Background or Watermark of Excel Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "WorkSheetBackground_Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//String folder = "";
//String storage = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorkSheetBackground(fileName, sheetName, folder, storage);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Background or Watermark of Excel Worksheet!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Images 
//*  Convert AutoShape to Image 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "Sample_Test_Book";
//String fileName = name + ".xls";
//String sheetName = "Sheet4";
//int autoshapeNumber = 1;
//String format = "png";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.GetWorksheetAutoshapeWithFormat(fileName, sheetName, autoshapeNumber, format, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert AutoShape to Image , Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Text 
//*  Find Text in a Workbook
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String text = "aspose";

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    TextItemsResponse apiResponse = cellsApi.PostWorkbooksTextSearch(fileName, text, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
        
//        foreach(TextItem item in apiResponse.TextItems.TextItemList) {
//            Console.WriteLine("Text: " + item.Text);
//            Console.WriteLine("Href: " + item.link.Href);
//            Console.WriteLine("");
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Text 
//*  Find Text in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String text = "aspose";
//String sheetName = "Sheet2";

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    TextItemsResponse apiResponse = cellsApi.PostWorkSheetTextSearch(fileName, sheetName, text, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem item in apiResponse.TextItems.TextItemList)
//        {
//            Console.WriteLine("Text: " + item.Text);
//            Console.WriteLine("Href: " + item.link.Href);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Text 
//*  Get Text Items from a Workbook
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";

//String storage = null;
//String folder = null;

//try
//{
//    upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    invoke Aspose.Cells Cloud SDK API to append word document
//    TextItemsResponse apiResponse = cellsApi.GetWorkBookTextItems(fileName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem item in apiResponse.TextItems.TextItemList)
//        {
//            Console.WriteLine("Text: " + item.Text);
//            Console.WriteLine("Href: " + item.link.Href);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}


///*
//*  Working with Text 
//*  Replace Text in a Workbook 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String oldValue = "aspose";
//String newValue = "aspose.com";

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorkbookReplaceResponse apiResponse = cellsApi.PostWorkbooksTextReplace(fileName, oldValue, newValue, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Matches: " + apiResponse.Matches);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Text 
//*  Replace Text in a Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//String oldValue = "aspose";
//String newValue = "aspose.com";

//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    WorksheetReplaceResponse apiResponse = cellsApi.PostWorsheetTextReplace(fileName, sheetName, oldValue, newValue, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Matches: " + apiResponse.Matches);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Text 
//*  Get Text Items from a Worksheet  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//String storage = null;
//String folder = null;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    TextItemsResponse apiResponse = cellsApi.GetWorkSheetTextItems(fileName, sheetName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        foreach (TextItem item in apiResponse.TextItems.TextItemList)
//        {
//            Console.WriteLine("Text: " + item.Text);
//            Console.WriteLine("Href: " + item.link.Href);
//        }
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}

///*
//*  Working with Charts 
//*  Get Chart from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartNumber = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.GetWorksheetChart(fileName, sheetName, chartNumber, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Get Chart from a Worksheet, done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Convert Chart to Image 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String name = "Sample_Test_Book";
//String fileName = name + ".xls";
//String sheetName = "Sheet5";
//int chartNumber = 0;
//String format = "png";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.GetWorksheetChartWithFormat(fileName, sheetName, chartNumber, format, storage, folder);


//    if (apiResponse != null)
//    {
//        Console.WriteLine("Convert Chart to Image, done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}





///*
//*  Working with Charts 
//*  Add a Chart in a Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet6";
//String chartType = "bar";
//int upperLeftRow = 12;
//int upperLeftColumn = 12;
//int lowerRightRow = 20;
//int lowerRightColumn = 20;
//String area = "A1:A3";
//Boolean isVertical = false;
//String categoryData = "";
//Boolean isAutoGetSerialName = true;
//String title = "SalesState";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ChartsResponse apiResponse = cellsApi.PutWorksheetAddChart(fileName, sheetName, chartType, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData, isAutoGetSerialName, title, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Add a Chart in a Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Delete a Chart from a Worksheet  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ChartsResponse apiResponse = cellsApi.DeleteWorksheetDeleteChart(fileName, sheetName, chartIndex, storage, folder);


//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete a Chart from a Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Get Chart Area from a Worksheet
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ChartAreaResponse apiResponse = cellsApi.GetChartArea(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        ChartArea chartArea = apiResponse.ChartArea;
//        Console.WriteLine("ChatArea X :: " + chartArea.X);
//        Console.WriteLine("ChatArea Y :: " + chartArea.Y);
//        Console.WriteLine("ChatArea Area :: " + chartArea.Area);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Get Fill Format of a Chart Area from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    FillFormatResponse apiResponse = cellsApi.GetChartAreaFillFormat(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        FillFormat chartAreaFillFormat = apiResponse.FillFormat;
//        Console.WriteLine("ChatArea FillFormat Type :: " + chartAreaFillFormat.Type);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Delete all Charts from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet6";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetClearCharts(fileName, sheetName, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete all Charts from a Worksheet  ");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Show Chart Legend in a Worksheet  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PutWorksheetChartLegend(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Show Chart Legend in a Worksheet, Done!  ");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Hide Chart Legend in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetChartLegend(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Hide Chart Legend in a Worksheet, Done!  ");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Get Chart Legend from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    LegendResponse apiResponse = cellsApi.GetWorksheetChartLegend(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Chart Legend Position :: " + apiResponse.Legend.Position);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Update Chart Legend in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//Legend body = new Legend();
//body.Height = 15;
//body.Position = "Left";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    LegendResponse apiResponse = cellsApi.PostWorksheetChartLegend(fileName, sheetName, chartIndex, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Chart Legend Position :: " + apiResponse.Legend.Position);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Set Chart Title in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";
//Title body = new Title();
//body.Text = "aspose";
//body.Height = 15;

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    TitleResponse apiResponse = cellsApi.PutWorksheetChartTitle(fileName, sheetName, chartIndex, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Set Chart Title in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Update Chart Title in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";
//Title body = new Title();
//body.Text = "aspose";
//body.Height = 15;              

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    TitleResponse apiResponse = cellsApi.PostWorksheetChartTitle(fileName, sheetName, chartIndex, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Update Chart Title in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Charts 
//*  Delete Chart Title in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet5";
//int chartIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetChartTitle(fileName, sheetName, chartIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Chart Title in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Hyperlink 
//*  Get Hyperlink from Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//int hyperlinkIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    HyperlinkResponse apiResponse = cellsApi.GetWorkSheetHyperlink(fileName, sheetName, hyperlinkIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Hyperlink Address : " + apiResponse.Hyperlink.Address);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Hyperlink 
//*  Add Hyperlinks to Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//int firstRow = 2;
//int firstColumn = 2;
//int totalRows = 2;
//int totalColumns = 2;
//String address = "http://www.aspose.com/cloud/total-api.aspx";
//String storage = "";
//String folder = "";
//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    HyperlinkResponse apiResponse = cellsApi.PutWorkSheetHyperlink(fileName, sheetName, firstRow, firstColumn, totalRows, totalColumns, address, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Hyperlink Address : " + apiResponse.Hyperlink.Address);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Hyperlink 
//*  Update Hyperlinks in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//int hyperlinkIndex = 0;
//String storage = "";
//String folder = "";

//Hyperlink body = new Hyperlink();
//body.Address = "http://www.aspose.com/cloud/total-api.aspx";
//body.TextToDisplay = "Aspose Cloud APIs";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    HyperlinkResponse apiResponse = cellsApi.PostWorkSheetHyperlink(fileName, sheetName, hyperlinkIndex, storage, folder, body);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Hyperlink Address : " + apiResponse.Hyperlink.Address);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Hyperlink 
//*  Delete Hyperlinks from Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//int hyperlinkIndex = 0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorkSheetHyperlink(fileName, sheetName, hyperlinkIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Hyperlinks from Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Rows 
//*  Get Row from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int rowIndex = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    RowResponse apiResponse = cellsApi.GetWorksheetRow(fileName, sheetName, rowIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Row Href : " + apiResponse.Row.link.Href);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Rows 
//*  Delete Row from a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int rowIndex = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetRow(fileName, sheetName, rowIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Delete Row from a Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Rows 
//*  Add an Empty Row in a Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int rowIndex = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    RowResponse apiResponse = cellsApi.PutInsertWorksheetRow(fileName, sheetName, rowIndex, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Row Href : " + apiResponse.Row.link.Href);
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Rows 
//*  Auto Fit Rows in Excel Workbooks 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String password = "";
//Boolean isAutoFit = true;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    ResponseMessage apiResponse = cellsApi.GetWorkBook(fileName, password, isAutoFit, storage, folder);

//    if (apiResponse != null)
//    {
//        Console.WriteLine("Auto Fit Rows in Excel Workbooks, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Rows 
//*  Copy Rows in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet2";
//int sourceRowIndex = 1;
//int destinationRowIndex = 1;
//int rowNumber = 1;
//String worksheet = "Sheet1";
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostCopyWorksheetRows(fileName, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, worksheet, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Copy Rows in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Rows 
//*  Hide Rows in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int startrow = 1;
//int totalRows = 1;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostHideWorksheetRows(fileName, sheetName, startrow, totalRows, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Hide Rows in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




///*
//*  Working with Rows 
//*  Unhide Rows in Excel Worksheet 
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Hide_Row_Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int startrow = 1;
//int totalRows = 1;
//Double height = 1.0;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostUnhideWorksheetRows(fileName, sheetName, startrow, totalRows, height, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Unhide Rows in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}



///*
//*  Working with Rows 
//*  Group Rows in Excel Worksheet  
//*/
//CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
//StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

//String fileName = "Sample_Test_Book.xls";
//String sheetName = "Sheet1";
//int firstIndex = 1;
//int lastIndex = 1;
//Boolean hide = false;
//String storage = "";
//String folder = "";

//try
//{
//    //upload source file to aspose cloud storage
//    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

//    //invoke Aspose.Cells Cloud SDK API to append word document
//    SaaSposeResponse apiResponse = cellsApi.PostGroupWorksheetRows(fileName, sheetName, firstIndex, lastIndex, hide, storage, folder);

//    if (apiResponse != null && apiResponse.Status.Equals("OK"))
//    {
//        Console.WriteLine("Group Rows in Excel Worksheet, Done!");
//        Console.ReadKey();
//    }
//}
//catch (Exception ex)
//{
//    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
//}




/*
*  Working with Rows 
*  Ungroup Rows in Excel Worksheet 
*/
CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

String fileName = "Group_Rows_Sample_Test_Book.xls";
String sheetName = "Sheet1";
int firstIndex = 1;
int lastIndex = 1;
Boolean hide = false;
String storage = "";
String folder = "";

try
{
    //upload source file to aspose cloud storage
    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

    //invoke Aspose.Cells Cloud SDK API to append word document
    SaaSposeResponse apiResponse = cellsApi.PostUngroupWorksheetRows(fileName, sheetName, firstIndex, lastIndex, hide, storage, folder);

    if (apiResponse != null && apiResponse.Status.Equals("OK"))
    {
        Console.WriteLine("UnGroup Rows in Excel Worksheet, Done!");
        Console.ReadKey();
    }
}
catch (Exception ex)
{
    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
}



    ///*
    //*  Working with Rows 
    //*  Delete Row from a Worksheet 
    //*/
    //CellsApi cellsApi = new CellsApi(APIKEY, APPSID, BASEPATH);
    //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

    //String fileName = "Sample_Test_Book.xls";
    //String sheetName = "Sheet1";
    //int rowIndex = 1;
    //String storage = "";
    //String folder = "";

    //try
    //{
    //    //upload source file to aspose cloud storage
    //    storageApi.PutCreate(fileName, "", "", System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + fileName));

    //    //invoke Aspose.Cells Cloud SDK API to append word document
    //    SaaSposeResponse apiResponse = cellsApi.DeleteWorksheetRow(fileName, sheetName, rowIndex, storage, folder);

    //    if (apiResponse != null && apiResponse.Status.Equals("OK"))
    //    {
    //        Console.WriteLine("Delete Row from a Worksheet, Done!");
    //        Console.ReadKey();
    //    }
    //}
    //catch (Exception ex)
    //{
    //    System.Diagnostics.Debug.WriteLine("error:" + ex.Message + "\n" + ex.StackTrace);
    //}


 



 


        /******************
         * End main method
         */
}
}
}
