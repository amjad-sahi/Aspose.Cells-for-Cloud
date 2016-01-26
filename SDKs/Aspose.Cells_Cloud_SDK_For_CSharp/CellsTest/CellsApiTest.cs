using Com.Aspose.Cells.Api;
using Com.Aspose.Storage.Api;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace CellsTest
{
    
    
    /// <summary>
    ///This is a test class for TestCellsApi and is intended
    ///to contain all TestCellsApi Unit Tests
    ///</summary>
    [TestClass()]
    public class TestCellsApi
    {
        protected string APIKEY = "xxxxxxxx";
        protected string APPSID = "xxxxxxxx";
        protected string BASEPATH = "http://api.aspose.com/v1.1";

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        
        ////Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        
        ////Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        
        ////Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        
        #endregion


        /// <summary>
        ///A test for DeleteDecryptDocument
        ///</summary>
        [TestMethod()]
        public void TestDeleteDecryptDocument()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "encrypted_Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.WorkbookEncryptionRequest body = new Com.Aspose.Cells.Model.WorkbookEncryptionRequest();
            body.EncryptionType = "XOR";
            body.Password = "aspose";
            body.KeyLength = 128;

            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteDecryptDocument(name, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteDocumentProperties
        ///</summary>
        [TestMethod()]
        public void TestDeleteDocumentProperties()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse actual;
            actual = target.DeleteDocumentProperties(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestDeleteDocumentProperty()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));
            string propertyName = "AsposeAuthor"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse actual;
            actual = target.DeleteDocumentProperty(name, propertyName, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteDocumentUnProtectFromChanges
        ///</summary>
        [TestMethod()]
        public void TestDeleteDocumentUnProtectFromChanges()
        {    
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteDocumentUnProtectFromChanges(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeletePivotTableField
        ///</summary>
        [TestMethod()]
        public void TestDeletePivotTableField()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            string pivotFieldType = "Row"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.PivotTableFieldRequest body = new Com.Aspose.Cells.Model.PivotTableFieldRequest();
            body.Data = new System.Collections.Generic.List<int?>{1,2};
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeletePivotTableField(name, sheetName, pivotTableIndex, pivotFieldType, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteUnProtectDocument
        ///</summary>
        [TestMethod()]
        public void TestDeleteUnProtectDocument()
        {    
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Protected_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.WorkbookProtectionRequest body = new Com.Aspose.Cells.Model.WorkbookProtectionRequest();
            body.ProtectionType = "None";
            body.Password = "aspose";
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteUnProtectDocument(name, storage, folder, body);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteUnprotectWorksheet
        ///</summary>
        [TestMethod()]
        public void TestDeleteUnprotectWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ProtectSheetParameter body = new Com.Aspose.Cells.Model.ProtectSheetParameter(); 
            body.ProtectionType = "None";
            
            Com.Aspose.Cells.Model.WorksheetResponse actual;
            actual = target.DeleteUnprotectWorksheet(name, sheetName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetBackground
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetBackground()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string folder = null; 
            string storage = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorkSheetBackground(name, sheetName, folder, storage);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetComment
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetComment()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string cellName = "a4"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorkSheetComment(name, sheetName, cellName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetHyperlink
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetHyperlink()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? hyperlinkIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetHyperlinks
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetHyperlinks()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorkSheetHyperlinks(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetPictures
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetPictures()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet6"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorkSheetPictures(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorkSheetValidation
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorkSheetValidation()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet3"; 
            int? validationIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ValidationResponse actual;
            actual = target.DeleteWorkSheetValidation(name, sheetName, validationIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ValidationResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheet
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheet()
        {    
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorksheetsResponse actual;
            actual = target.DeleteWorksheet(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetChartLegend
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetChartLegend()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse expected = null; 
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            //Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetChartTitle
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetChartTitle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetChartTitle(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetClearCharts
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetClearCharts()
        { 
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet5"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetClearCharts(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? columnIndex = 1; 
            int? columns = 1; 
            bool? updateReference = false;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ColumnsResponse actual;
            actual = target.DeleteWorksheetColumns(name, sheetName, columnIndex, columns, updateReference, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ColumnsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetDeleteChart
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetDeleteChart()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ChartsResponse actual;
            actual = target.DeleteWorksheetDeleteChart(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ChartsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetFreezePanes
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetFreezePanes()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? row = 1; 
            int? column = 1; 
            int? freezedRows = 1; 
            int? freezedColumns = 1; 
            string folder = null; 
            string storage = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetOleObject
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetOleObject()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Embeded_OleObject_Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? oleObjectIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetOleObject(name, sheetName, oleObjectIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetOleObjects
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetOleObjects()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Embeded_OleObject_Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetOleObjects(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetPicture
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetPicture()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet6"; 
            int? pictureIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetPicture(name, sheetName, pictureIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetPivotTable
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetPivotTable()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetPivotTable(name, sheetName, pivotTableIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetPivotTables
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetPivotTables()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetPivotTables(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetRow
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetRow()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? rowIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetRow(name, sheetName, rowIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for DeleteWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestDeleteWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? startrow = 0; 
            int? totalRows = null; 
            bool? updateReference = null;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.DeleteWorksheetRows(name, sheetName, startrow, totalRows, updateReference, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetChartArea
        ///</summary>
        [TestMethod()]
        public void TestGetChartArea()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ChartAreaResponse actual;
            actual = target.GetChartArea(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ChartAreaResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetChartAreaBorder
        ///</summary>
        [TestMethod()]
        public void TestGetChartAreaBorder()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.LineResponse actual;
            actual = target.GetChartAreaBorder(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.LineResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetChartAreaFillFormat
        ///</summary>
        [TestMethod()]
        public void TestGetChartAreaFillFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.FillFormatResponse actual;
            actual = target.GetChartAreaFillFormat(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.FillFormatResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentProperties
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperties()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse actual;
            actual = target.GetDocumentProperties(name, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsDocumentPropertiesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestGetDocumentProperty()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string propertyName = "AsposeAuthor"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellsDocumentPropertyResponse actual;
            actual = target.GetDocumentProperty(name, propertyName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsDocumentPropertyResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetExtractBarcodes
        ///</summary>
        [TestMethod()]
        public void TestGetExtractBarcodes()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet6"; 
            int? pictureNumber = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.BarcodeResponseList actual;
            actual = target.GetExtractBarcodes(name, sheetName, pictureNumber, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.BarcodeResponseList(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetPivotTableField
        ///</summary>
        [TestMethod()]
        public void TestGetPivotTableField()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            int? pivotFieldIndex = 0; 
            string pivotFieldType = "Row"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.PivotFieldResponse actual;
            actual = target.GetPivotTableField(name, sheetName, pivotTableIndex, pivotFieldIndex, pivotFieldType, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PivotFieldResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBook
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBook()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string password = null; 
            bool? isAutoFit = null;
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorkBook(name, password, isAutoFit, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBookDefaultStyle
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBookDefaultStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.StyleResponse actual;
            actual = target.GetWorkBookDefaultStyle(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.StyleResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBookName
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBookName()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string nameName = "TestRange"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.NameResponse actual;
            actual = target.GetWorkBookName(name, nameName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.NameResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBookNames
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBookNames()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.NamesResponse actual;
            actual = target.GetWorkBookNames(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.NamesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBookTextItems
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBookTextItems()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.TextItemsResponse actual;
            actual = target.GetWorkBookTextItems(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkBookWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorkBookWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string format = "pdf"; 
            string password = null; 
            bool? isAutoFit = null;
            string storage = null; 
            string folder = null; 
            string outPath = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorkBookWithFormat(name, format, password, isAutoFit, storage, folder, outPath);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheet
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? verticalResolution = null; 
            int? horizontalResolution = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorkSheet(name, sheetName, verticalResolution, horizontalResolution, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetCalculateFormula
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetCalculateFormula()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH); 
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH); 
            
            string name = "Sample_Test_Book.xls";
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet1";
            string formula = "SUM(A5:A10)";
            string storage = null;
            string folder = null;

            Com.Aspose.Cells.Model.SingleValueResponse actual;
            actual = target.GetWorkSheetCalculateFormula(name, sheetName, formula, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SingleValueResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetComment
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetComment()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls"; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet2";
            string cellName = "A4"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CommentResponse actual;
            actual = target.GetWorkSheetComment(name, sheetName, cellName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CommentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetComments
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetComments()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CommentsResponse actual;
            actual = target.GetWorkSheetComments(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CommentsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetHyperlink
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetHyperlink()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? hyperlinkIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.HyperlinkResponse actual;
            actual = target.GetWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.HyperlinkResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetHyperlinks
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetHyperlinks()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.HyperlinksResponse actual;
            actual = target.GetWorkSheetHyperlinks(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.HyperlinksResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetMergedCell
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetMergedCell()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls"; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? mergedCellIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.MergedCellResponse actual;
            actual = target.GetWorkSheetMergedCell(name, sheetName, mergedCellIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.MergedCellResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetMergedCells
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetMergedCells()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.MergedCellsResponse actual;
            actual = target.GetWorkSheetMergedCells(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.MergedCellsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetTextItems
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetTextItems()
        {
            
            
             
             
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.TextItemsResponse actual;
            actual = target.GetWorkSheetTextItems(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetValidation
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetValidation()
        {            
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
             
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));
            
            string sheetName = "Sheet1";
            int? validationIndex = 0;
            string storage = null;
            string folder = null;
            
            Com.Aspose.Cells.Model.ValidationResponse actual;
            actual = target.GetWorkSheetValidation(name, sheetName, validationIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ValidationResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetValidations
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetValidations()
        {
            
            
             
            
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ValidationsResponse actual;
            actual = target.GetWorkSheetValidations(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ValidationsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheetWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheetWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";  storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));
            string sheetName = "Sheet1";
            string format = "png"; 
            int? verticalResolution = 1; 
            int? horizontalResolution = 1; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorkSheetWithFormat(name, sheetName, format, verticalResolution, horizontalResolution, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkSheets
        ///</summary>
        [TestMethod()]
        public void TestGetWorkSheets()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorksheetsResponse actual;
            actual = target.GetWorkSheets(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorkbookSettings
        ///</summary>
        [TestMethod()]
        public void TestGetWorkbookSettings()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorkbookSettingsResponse actual;
            actual = target.GetWorkbookSettings(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorkbookSettingsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetAutoshape
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetAutoshape()
        { 
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet4"; 
            int? autoshapeNumber = 1; 
            string storage = null; 
            string folder = null;

            Com.Aspose.Cells.Model.AutoShapeResponse actual;
            actual = target.GetWorksheetAutoshape(name, sheetName, autoshapeNumber, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.AutoShapeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetAutoshapeWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetAutoshapeWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet4"; 
            int? autoshapeNumber = 1; 
            string format = "png"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetAutoshapeWithFormat(name, sheetName, autoshapeNumber, format, storage, folder);
            
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetAutoshapes
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetAutoshapes()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet4"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.AutoShapesResponse actual;
            actual = target.GetWorksheetAutoshapes(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.AutoShapesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetCell
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetCell()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string cellOrMethodName = "a1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetCell(name, sheetName, cellOrMethodName, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetCellStyle
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetCellStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string cellName = "a1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.StyleResponse actual;
            actual = target.GetWorksheetCellStyle(name, sheetName, cellName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.StyleResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetCells
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetCells()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? offest = null; 
            int? count = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellsResponse actual;
            actual = target.GetWorksheetCells(name, sheetName, offest, count, storage, folder);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetChart
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetChart()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartNumber = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetChart(name, sheetName, chartNumber, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetChartLegend
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetChartLegend()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.LegendResponse actual;
            actual = target.GetWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.LegendResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetChartWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetChartWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartNumber = 0; 
            string format = "png"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetChartWithFormat(name, sheetName, chartNumber, format, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetCharts
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetCharts()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5";
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ChartsResponse actual;
            actual = target.GetWorksheetCharts(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ChartsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetColumn
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetColumn()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? columnIndex = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ColumnResponse actual;
            actual = target.GetWorksheetColumn(name, sheetName, columnIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ColumnResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ColumnsResponse actual;
            actual = target.GetWorksheetColumns(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ColumnsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetOleObject
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetOleObject()
        {
            
            
             
             
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            int? objectNumber = null; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.ResponseMessage expected = null; 
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetOleObject(name, sheetName, objectNumber, storage, folder);
            Assert.AreEqual("200", actual.Code);
            //Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetOleObjectWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetOleObjectWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Embeded_OleObject_Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? objectNumber = 0;
            string format = "png";
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetOleObjectWithFormat(name, sheetName, objectNumber, format, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetOleObjects
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetOleObjects()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Embeded_OleObject_Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.OleObjectsResponse actual;
            actual = target.GetWorksheetOleObjects(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.OleObjectsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetPicture
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetPicture()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet6"; 
            int? pictureNumber = 0; 

            string storage = null; 
            string folder = null; 

            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetPicture(name, sheetName, pictureNumber, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetPictureWithFormat
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetPictureWithFormat()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls"; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet6"; 
            int? pictureNumber = 0; 
            string format = "png"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.GetWorksheetPictureWithFormat(name, sheetName, pictureNumber, format, storage, folder);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetPictures
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetPictures()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet6"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.PicturesResponse actual;
            actual = target.GetWorksheetPictures(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PicturesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetPivotTable
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetPivotTable()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls"; 
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivottableIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.PivotTableResponse actual;
            actual = target.GetWorksheetPivotTable(name, sheetName, pivottableIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PivotTableResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetPivotTables
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetPivotTables()
        {    
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.PivotTablesResponse actual;
            actual = target.GetWorksheetPivotTables(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PivotTablesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetRow
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetRow()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? rowIndex = 1; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.RowResponse actual;
            actual = target.GetWorksheetRow(name, sheetName, rowIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.RowResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for GetWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestGetWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.RowsResponse actual;
            actual = target.GetWorksheetRows(name, sheetName, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.RowsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostAutofitWorkbookRows
        ///</summary>
        [TestMethod()]
        public void TestPostAutofitWorkbookRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            int? startRow = 1; 
            int? endRow = 2; 
            bool? onlyAuto = false;
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.AutoFitterOptions body = new Com.Aspose.Cells.Model.AutoFitterOptions();
            body.IgnoreHidden = true;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostAutofitWorkbookRows(name, startRow, endRow, onlyAuto, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostAutofitWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostAutofitWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? startRow = 1; 
            int? endRow = 2; 
            bool? onlyAuto = false;
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.AutoFitterOptions body = new Com.Aspose.Cells.Model.AutoFitterOptions();
            body.IgnoreHidden = true;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostAutofitWorksheetRows(name, sheetName, startRow, endRow, onlyAuto, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostClearContents
        ///</summary>
        [TestMethod()]
        public void TestPostClearContents()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string range = null; 
            int? startRow = 1; 
            int? startColumn = 1; 
            int? endRow = 2; 
            int? endColumn = 2; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostClearContents(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostClearFormats
        ///</summary>
        [TestMethod()]
        public void TestPostClearFormats()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            string range = ""; 
            int? startRow = 1; 
            int? startColumn = 1; 
            int? endRow = 2; 
            int? endColumn = 2; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostClearFormats(name, sheetName, range, startRow, startColumn, endRow, endColumn, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostColumnStyle
        ///</summary>
        [TestMethod()]
        public void TestPostColumnStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? columnIndex = 0; 
            string storage = null; 
            string folder = null;
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style();
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            Com.Aspose.Cells.Model.Color color = new Com.Aspose.Cells.Model.Color();
            color.A = "255";
            color.R = "0";
            color.G = "0";
            color.B = "0";
            font.Color = color;
            body.Font = font;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostColumnStyle(name, sheetName, columnIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCopyCellIntoCell
        ///</summary>
        [TestMethod()]
        public void TestPostCopyCellIntoCell()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string destCellName = "a1"; 
            string sheetName = "Sheet1";
            string worksheet = "Sheet2"; 
            string cellname = "a1"; 
            int? row = 2; 
            int? column = 2; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostCopyCellIntoCell(name, destCellName, sheetName, worksheet, cellname, row, column, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCopyWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPostCopyWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet7";
            string sourceSheet = "Sheet1"; 
            string folder = null; 
            string storage = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostCopyWorksheet(name, sheetName, sourceSheet, folder, storage);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCopyWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPostCopyWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            int? sourceColumnIndex = 2; 
            int? destinationColumnIndex = 2; 
            int? columnNumber = 2; 
            string worksheet = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostCopyWorksheetColumns(name, sheetName, sourceColumnIndex, destinationColumnIndex, columnNumber, worksheet, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostCopyWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostCopyWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1"; 
            int? sourceRowIndex = 2; 
            int? destinationRowIndex = 2; 
            int? rowNumber = 2; 
            string worksheet = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostCopyWorksheetRows(name, sheetName, sourceRowIndex, destinationRowIndex, rowNumber, worksheet, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostDocumentSaveAs
        ///</summary>
        [TestMethod()]
        public void TestPostDocumentSaveAs()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string newfilename = "Sample_Test_Book.pdf";
            bool? isAutoFitRows = null;
            bool? isAutoFitColumns = null;
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.SaveOptions body = new Com.Aspose.Cells.Model.SaveOptions(); 
            
            Com.Aspose.Cells.Model.SaveResponse actual;
            actual = target.PostDocumentSaveAs(name, newfilename, isAutoFitRows, isAutoFitColumns, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaveResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostEncryptDocument
        ///</summary>
        [TestMethod()]
        public void TestPostEncryptDocument()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.WorkbookEncryptionRequest body = new Com.Aspose.Cells.Model.WorkbookEncryptionRequest(); 
            body.EncryptionType = "XOR";
            body.Password = "aspose";
            body.KeyLength = 128;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostEncryptDocument(name, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostGroupWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPostGroupWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? firstIndex = 1; 
            int? lastIndex = 1; 
            bool? hide = true;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostGroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, hide, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostGroupWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostGroupWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);            
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? firstIndex = 1; 
            int? lastIndex = 1; 
            bool? hide = true;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostGroupWorksheetRows(name, sheetName, firstIndex, lastIndex, hide, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostHideWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPostHideWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? startColumn = 1; 
            int? totalColumns = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostHideWorksheetColumns(name, sheetName, startColumn, totalColumns, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostHideWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostHideWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? startrow = 1; 
            int? totalRows = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostHideWorksheetRows(name, sheetName, startrow, totalRows, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostImportData
        ///</summary>
        [TestMethod()]
        public void TestPostImportData()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.ImportOption body = new Com.Aspose.Cells.Model.ImportOption();
            body.IsInsert = true;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostImportData(name, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostMoveWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPostMoveWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.WorksheetMovingRequest body = new Com.Aspose.Cells.Model.WorksheetMovingRequest(); 
            body.DestinationWorksheet = "Sheet5";
            body.Position = "after";
            
            Com.Aspose.Cells.Model.WorksheetsResponse actual;
            actual = target.PostMoveWorksheet(name, sheetName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostPivotTableCellStyle
        ///</summary>
        [TestMethod()]
        public void TestPostPivotTableCellStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            int? column = 1; 
            int? row = 1; 
            string storage = null; 
            string folder = null;
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style();
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            Com.Aspose.Cells.Model.Color color = new Com.Aspose.Cells.Model.Color();
            color.A = "255";
            color.R = "0";
            color.G = "0";
            color.B = "0";
            font.Color = color;
            body.Font = font;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostPivotTableCellStyle(name, sheetName, pivotTableIndex, column, row, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostPivotTableStyle
        ///</summary>
        [TestMethod()]
        public void TestPostPivotTableStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            string storage = null; 
            string folder = null;
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style();
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            Com.Aspose.Cells.Model.Color color = new Com.Aspose.Cells.Model.Color();
            color.A = "255";
            color.R = "0";
            color.G = "0";
            color.B = "0";
            font.Color = color;
            body.Font = font;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostPivotTableStyle(name, sheetName, pivotTableIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostProtectDocument
        ///</summary>
        [TestMethod()]
        public void TestPostProtectDocument()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.WorkbookProtectionRequest body = new Com.Aspose.Cells.Model.WorkbookProtectionRequest(); 
            body.Password = "aspose";
            body.ProtectionType = "All";
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostProtectDocument(name, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostRenameWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPostRenameWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1";
            string newname = "newSheet"; 
            string folder = null; 
            string storage = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostRenameWorksheet(name, sheetName, newname, folder, storage);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostRowStyle
        ///</summary>
        [TestMethod()]
        public void TestPostRowStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? rowIndex = 1; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style();
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            Com.Aspose.Cells.Model.Color color = new Com.Aspose.Cells.Model.Color();
            color.A = "255";
            color.R = "0";
            color.G = "0";
            color.B = "0";
            font.Color = color;

            body.Font = font;

            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostRowStyle(name, sheetName, rowIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSetCellHtmlString
        ///</summary>
        [TestMethod()]
        public void TestPostSetCellHtmlString()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string cellName = "a1"; 
            string storage = null; 
            string folder = null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "testfile.txt"); 
            
            Com.Aspose.Cells.Model.CellResponse actual;
            actual = target.PostSetCellHtmlString(name, sheetName, cellName, storage, folder, file);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSetCellRangeValue
        ///</summary>
        [TestMethod()]
        public void TestPostSetCellRangeValue()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet1";
            string cellarea = "A10:B20";
            string value = "1234";
            string type = "int";
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostSetCellRangeValue(name, sheetName, cellarea, value, type, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostSetWorksheetColumnWidth
        ///</summary>
        [TestMethod()]
        public void TestPostSetWorksheetColumnWidth()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? columnIndex = 1; 
            double? width = 20; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ColumnResponse actual;
            actual = target.PostSetWorksheetColumnWidth(name, sheetName, columnIndex, width, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ColumnResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUngroupWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPostUngroupWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? firstIndex = 1; 
            int? lastIndex = 1; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUngroupWorksheetColumns(name, sheetName, firstIndex, lastIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUngroupWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostUngroupWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? firstIndex = 1; 
            int? lastIndex = 1; 
            bool? isAll = false;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUngroupWorksheetRows(name, sheetName, firstIndex, lastIndex, isAll, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUnhideWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPostUnhideWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? startcolumn = 1; 
            int? totalColumns = 1; 
            double? width = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUnhideWorksheetColumns(name, sheetName, startcolumn, totalColumns, width, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUnhideWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPostUnhideWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? startrow = 1; 
            int? totalRows = 1; 
            double? height = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUnhideWorksheetRows(name, sheetName, startrow, totalRows, height, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUpdateWorksheetCellStyle
        ///</summary>
        [TestMethod()]
        public void TestPostUpdateWorksheetCellStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1";
            string cellName = "A1"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style();
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            Com.Aspose.Cells.Model.Color color = new Com.Aspose.Cells.Model.Color();
            color.A = "255";
            color.R = "0";
            color.G = "0";
            color.B = "0";
            font.Color = color;

            body.Font = font;
            
            Com.Aspose.Cells.Model.StyleResponse actual;
            actual = target.PostUpdateWorksheetCellStyle(name, sheetName, cellName, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.StyleResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUpdateWorksheetOleObject
        ///</summary>
        [TestMethod()]
        public void TestPostUpdateWorksheetOleObject()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Embeded_OleObject_Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? oleObjectIndex = 0; 
            string storage = null; 
            string folder = null; 

            string sourceFileName = "Sample_Book2.xls";
            string imageFileName = "aspose-logo.png";

            Com.Aspose.Cells.Model.OleObject body = new Com.Aspose.Cells.Model.OleObject(); 
            body.SourceFullName = sourceFileName;
            body.ImageSourceFullName = imageFileName;
            body.UpperLeftRow = 15;
            body.UpperLeftColumn = 5;
            body.Top = 10;
            body.Bottom = 10;
            body.Left = 10;
            body.Height = 400;
            body.Width = 400;
            body.IsAutoSize = true;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUpdateWorksheetOleObject(name, sheetName, oleObjectIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUpdateWorksheetProperty
        ///</summary>
        [TestMethod()]
        public void TestPostUpdateWorksheetProperty()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string folder = null; 
            string storage = null; 
            Com.Aspose.Cells.Model.Worksheet body = new Com.Aspose.Cells.Model.Worksheet(); 
            body.Type ="Worksheet";
            body.Name = "Sheet1";
            body.IsGridlinesVisible = true;
            body.IsPageBreakPreview = true;
            body.IsRulerVisible = true;
            
            Com.Aspose.Cells.Model.WorksheetResponse actual;
            actual = target.PostUpdateWorksheetProperty(name, sheetName, folder, storage, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUpdateWorksheetRangeStyle
        ///</summary>
        [TestMethod()]
        public void TestPostUpdateWorksheetRangeStyle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            string range = "a2"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Style body = new Com.Aspose.Cells.Model.Style(); 
            Com.Aspose.Cells.Model.Font font = new Com.Aspose.Cells.Model.Font();
            font.Name = "Calibri";
            font.Size = 40;
            body.Font = font;
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostUpdateWorksheetRangeStyle(name, sheetName, range, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostUpdateWorksheetRow
        ///</summary>
        [TestMethod()]
        public void TestPostUpdateWorksheetRow()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? rowIndex = 0; 
            double? height = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.RowResponse actual;
            actual = target.PostUpdateWorksheetRow(name, sheetName, rowIndex, height, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.RowResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkSheetComment
        ///</summary>
        [TestMethod()]
        public void TestPostWorkSheetComment()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string cellName = "a4"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Comment body = new Com.Aspose.Cells.Model.Comment(); 
            body.AutoSize = true;
            body.Note = "Aspose";
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorkSheetComment(name, sheetName, cellName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkSheetHyperlink
        ///</summary>
        [TestMethod()]
        public void TestPostWorkSheetHyperlink()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? hyperlinkIndex = 0; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.Hyperlink body = new Com.Aspose.Cells.Model.Hyperlink();
            body.Address ="http://www.aspose.com/cloud/total-api.aspx";
            body.TextToDisplay = "Aspose Cloud APIs";

            Com.Aspose.Cells.Model.HyperlinkResponse actual;
            actual = target.PostWorkSheetHyperlink(name, sheetName, hyperlinkIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.HyperlinkResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkSheetPicture
        ///</summary>
        [TestMethod()]
        public void TestPostWorkSheetPicture()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet6"; 
            int? pictureIndex = 0; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Picture body = new Com.Aspose.Cells.Model.Picture(); 
            body.Name ="aspose-cloud-logo";
            body.RotationAngle = 90.0;
            
            Com.Aspose.Cells.Model.PictureResponse actual;
            actual = target.PostWorkSheetPicture(name, sheetName, pictureIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PictureResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkSheetTextSearch
        ///</summary>
        [TestMethod()]
        public void TestPostWorkSheetTextSearch()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string text = "aspose"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.TextItemsResponse actual;
            actual = target.PostWorkSheetTextSearch(name, sheetName, text, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkSheetValidation
        ///</summary>
        [TestMethod()]
        public void TestPostWorkSheetValidation()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? validationIndex = 1; 
            string storage = null; 
            string folder = null; 
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "aspose-cloud.png"); 

            Com.Aspose.Cells.Model.ValidationResponse actual;
            //actual = target.PostWorkSheetValidation(name, sheetName, validationIndex, storage, folder, file);
            //Assert.AreEqual(null, actual.Code);
            //Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbookCalculateFormula
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbookCalculateFormula()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorkbookCalculateFormula(name, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbookGetSmartMarkerResult
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbookGetSmartMarkerResult()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string xmlFile = null; 
            string storage = null; 
            string folder = null; 
            string outPath = null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "Sample_SmartMarker_Data.xml"); 
            
            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.PostWorkbookGetSmartMarkerResult(name, xmlFile, storage, folder, outPath, file);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbookSettings
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbookSettings()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.WorkbookSettings body = new Com.Aspose.Cells.Model.WorkbookSettings(); 
            body.LanguageCode = "USA";
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorkbookSettings(name, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbookSplit
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbookSplit()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string format = "png"; 
            int? from = null; 
            int? to = null; 
            int? horizontalResolution = null; 
            int? verticalResolution = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SplitResultResponse actual;
            actual = target.PostWorkbookSplit(name, format, from, to, horizontalResolution, verticalResolution, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SplitResultResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbooksMerge
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbooksMerge()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string mergeWith = "Sample_Book2.xls"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorkbookResponse actual;
            actual = target.PostWorkbooksMerge(name, mergeWith, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorkbookResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbooksTextReplace
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbooksTextReplace()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string oldValue = "aspose";
            string newValue = "aspose.com"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorkbookReplaceResponse actual;
            actual = target.PostWorkbooksTextReplace(name, oldValue, newValue, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorkbookReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorkbooksTextSearch
        ///</summary>
        [TestMethod()]
        public void TestPostWorkbooksTextSearch()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string text = "aspose"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.TextItemsResponse actual;
            actual = target.PostWorkbooksTextSearch(name, text, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TextItemsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetCellSetValue
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetCellSetValue()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string cellName = "A1"; 
            string value = null; 
            string type = null; 
            string formula = null; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.CellResponse actual;
            actual = target.PostWorksheetCellSetValue(name, sheetName, cellName, value, type, formula, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetChartLegend
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetChartLegend()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Legend body = new Com.Aspose.Cells.Model.Legend();
            body.Height = 200;
            
            Com.Aspose.Cells.Model.LegendResponse actual;
            actual = target.PostWorksheetChartLegend(name, sheetName, chartIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.LegendResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetChartTitle
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetChartTitle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Title body = new Com.Aspose.Cells.Model.Title();
            body.Height = 200;
            
            Com.Aspose.Cells.Model.TitleResponse actual;
            actual = target.PostWorksheetChartTitle(name, sheetName, chartIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TitleResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetMerge
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetMerge()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet2"; 
            int? startRow = 1; 
            int? startColumn = 1; 
            int? totalRows = 1; 
            int? totalColumns = 5; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorksheetMerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetPivotTableCalculate
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetPivotTableCalculate()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Pivot_Table_Example.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorksheetPivotTableCalculate(name, sheetName, pivotTableIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetRangeSort
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetRangeSort()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1";
            string cellArea = "A5:A10"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.DataSorter body = new Com.Aspose.Cells.Model.DataSorter(); 
            body.CaseSensitive = "false";
            body.HasHeaders = "false" ;
            body.SortLeftToRight = "false";
            Com.Aspose.Cells.Model.SortKey sortKey = new Com.Aspose.Cells.Model.SortKey();
            sortKey.SortOrder = "descending";
            sortKey.Key = 0;
            body.KeyList = new System.Collections.Generic.List<Com.Aspose.Cells.Model.SortKey> { sortKey };

            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorksheetRangeSort(name, sheetName, cellArea, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorksheetUnmerge
        ///</summary>
        [TestMethod()]
        public void TestPostWorksheetUnmerge()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "MergeCell_Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? startRow = 1; 
            int? startColumn = 1; 
            int? totalRows = 1; 
            int? totalColumns = 5; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PostWorksheetUnmerge(name, sheetName, startRow, startColumn, totalRows, totalColumns, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PostWorsheetTextReplace
        ///</summary>
        [TestMethod()]
        public void TestPostWorsheetTextReplace()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            string oldValue = "aspose"; 
            string newValue = "aspose.com"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorksheetReplaceResponse actual;
            actual = target.PostWorsheetTextReplace(name, sheetName, oldValue, newValue, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetReplaceResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutAddNewWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPutAddNewWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.WorksheetsResponse actual;
            actual = target.PutAddNewWorksheet(name, sheetName, storage, folder);

            Assert.AreEqual("304", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutChangeVisibilityWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPutChangeVisibilityWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            bool? isVisible = false;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.WorksheetResponse actual;
            actual = target.PutChangeVisibilityWorksheet(name, sheetName, isVisible, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutConvertWorkBook
        ///</summary>
        [TestMethod()]
        public void TestPutConvertWorkBook()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";
             
            string format = "pdf"; 
            string password = ""; 
            string outPath = null; 
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name);
            //byte[] data = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "Sample_SmartMarker_Data.xml");             

            Com.Aspose.Cells.Model.ResponseMessage actual;
            actual = target.PutConvertWorkBook(format, password, outPath, file);
            Assert.AreEqual(200, actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ResponseMessage(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutDocumentProperty
        ///</summary>
        [TestMethod()]
        public void TestPutDocumentProperty()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);            
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Book1.xlsx";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string propertyName = "AsposeAuthor"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.CellsDocumentProperty body = new Com.Aspose.Cells.Model.CellsDocumentProperty(); 
            body.Name ="AsposeAuthor";
            body.Value ="Aspose Plugin Developer";
            body.BuiltIn = "false";
            
            Com.Aspose.Cells.Model.CellsDocumentPropertyResponse actual;
            actual = target.PutDocumentProperty(name, propertyName, storage, folder, body);
            Assert.AreEqual("201", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CellsDocumentPropertyResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutDocumentProtectFromChanges
        ///</summary>
        [TestMethod()]
        public void TestPutDocumentProtectFromChanges()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.PasswordRequest body = new Com.Aspose.Cells.Model.PasswordRequest();
            body.Password = "aspose";
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutDocumentProtectFromChanges(name, storage, folder, body);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutInsertWorksheetColumns
        ///</summary>
        [TestMethod()]
        public void TestPutInsertWorksheetColumns()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? columnIndex = 1; 
            int? columns = 1; 
            bool? updateReference = null;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.ColumnsResponse actual;
            actual = target.PutInsertWorksheetColumns(name, sheetName, columnIndex, columns, updateReference, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ColumnsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutInsertWorksheetRow
        ///</summary>
        [TestMethod()]
        public void TestPutInsertWorksheetRow()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? rowIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.RowResponse actual;
            actual = target.PutInsertWorksheetRow(name, sheetName, rowIndex, storage, folder);
            
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.RowResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutInsertWorksheetRows
        ///</summary>
        [TestMethod()]
        public void TestPutInsertWorksheetRows()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? startrow = 0; 
            int? totalRows = null; 
            bool? updateReference = null;
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutInsertWorksheetRows(name, sheetName, startrow, totalRows, updateReference, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutPivotTableField
        ///</summary>
        [TestMethod()]
        public void TestPutPivotTableField()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Pivot_Table_Example.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet2"; 
            int? pivotTableIndex = 0; 
            string pivotFieldType = "row"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.PivotTableFieldRequest body = new Com.Aspose.Cells.Model.PivotTableFieldRequest(); 
            body.Data = new System.Collections.Generic.List<int?>{1,2};
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutPivotTableField(name, sheetName, pivotTableIndex, pivotFieldType, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutProtectWorksheet
        ///</summary>
        [TestMethod()]
        public void TestPutProtectWorksheet()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.ProtectSheetParameter body = new Com.Aspose.Cells.Model.ProtectSheetParameter();
            body.ProtectionType = "None";

            Com.Aspose.Cells.Model.WorksheetResponse actual;
            actual = target.PutProtectWorksheet(name, sheetName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorksheetResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorkSheetBackground
        ///</summary>
        [TestMethod()]
        public void TestPutWorkSheetBackground()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            string folder = null; 
            string storage = null;
            byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "aspose-cloud.png"); 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutWorkSheetBackground(name, sheetName, folder, storage, file);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorkSheetComment
        ///</summary>
        [TestMethod()]
        public void TestPutWorkSheetComment()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet2";
            string cellName = "A4"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.Comment body = new Com.Aspose.Cells.Model.Comment(); 
            body.AutoSize = true;
            body.Note = "Aspose";
            
            Com.Aspose.Cells.Model.CommentResponse actual;
            actual = target.PutWorkSheetComment(name, sheetName, cellName, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.CommentResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorkSheetHyperlink
        ///</summary>
        [TestMethod()]
        public void TestPutWorkSheetHyperlink()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 

            string sheetName = "Sheet1"; 
            int? firstRow = 2; 
            int? firstColumn = 2; 
            int? totalRows = 2; 
            int? totalColumns = 2;
            string address = "http://www.aspose.com/cloud/total-api.aspx"; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.HyperlinkResponse actual;
            actual = target.PutWorkSheetHyperlink(name, sheetName, firstRow, firstColumn, totalRows, totalColumns, address, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.HyperlinkResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorkSheetValidation
        ///</summary>
        [TestMethod()]
        public void TestPutWorkSheetValidation()
        {
            //CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            //StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);

            //string name = "Sample_Test_Book.xls";

            //storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            //string sheetName = "Sheet1"; 
            //string range = null; 
            //string storage = null; 
            //string folder = null; 
            //byte[] file = System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + "aspose-cloud.png"); 
            
            //Com.Aspose.Cells.Model.ValidationResponse actual;
            //actual = target.PutWorkSheetValidation(name, sheetName, range, storage, folder, file);
            //Assert.AreEqual("200", actual.Code);
            //Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ValidationResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorkbookCreate
        ///</summary>
        [TestMethod()]
        public void TestPutWorkbookCreate()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book"+ new Random().Next(100) +".xls";
            
            string templateFile = null; 
            string dataFile = null; 
            string storage = null; 
            string folder = null; 
            
            byte[] file = null; 
            
            Com.Aspose.Cells.Model.WorkbookResponse actual;
            actual = target.PutWorkbookCreate(name, templateFile, dataFile, storage, folder, file);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.WorkbookResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetAddChart
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetAddChart()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet5"; 
            string chartType = "bar"; 
            int? upperLeftRow = 12; 
            int? upperLeftColumn = 12; 
            int? lowerRightRow = 20; 
            int? lowerRightColumn = 20;
            string area = "A1:A3"; 
            bool? isVertical = false;
            string categoryData = null; 
            bool? isAutoGetSerialName = true;
            string title = "SalesState"; 
            string storage = null; 
            string folder = null; 

            Com.Aspose.Cells.Model.ChartsResponse actual;
            actual = target.PutWorksheetAddChart(name, sheetName, chartType, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, area, isVertical, categoryData, isAutoGetSerialName, title, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.ChartsResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetAddPicture
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetAddPicture()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            string sheetName = "Sheet6"; 
            int? upperLeftRow = 5; 
            int? upperLeftColumn = 5; 
            int? lowerRightRow = 10; 
            int? lowerRightColumn = 10;
            string picturePath = "aspose-cloud.png"; 
            string storage = null; 
            string folder = null; 
            byte[] file = null;

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));
            storageApi.PutCreate(picturePath, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + picturePath));

            Com.Aspose.Cells.Model.PicturesResponse actual;
            actual = target.PutWorksheetAddPicture(name, sheetName, upperLeftRow, upperLeftColumn, lowerRightRow, lowerRightColumn, picturePath, storage, folder, file);

            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PicturesResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetChartLegend
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetChartLegend()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutWorksheetChartLegend(name, sheetName, chartIndex, storage, folder);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetChartTitle
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetChartTitle()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));

            string sheetName = "Sheet5"; 
            int? chartIndex = 0; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.Title body = new Com.Aspose.Cells.Model.Title();
            body.Height = 200;
            
            Com.Aspose.Cells.Model.TitleResponse actual;
            actual = target.PutWorksheetChartTitle(name, sheetName, chartIndex, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.TitleResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetFreezePanes
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetFreezePanes()
        {    
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            int? row = 1; 
            int? column = 1; 
            int? freezedRows = 1; 
            int? freezedColumns = 1; 
            string folder = null; 
            string storage = null; 
            
            Com.Aspose.Cells.Model.SaaSposeResponse actual;
            actual = target.PutWorksheetFreezePanes(name, sheetName, row, column, freezedRows, freezedColumns, folder, storage);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.SaaSposeResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetOleObject
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetOleObject()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            string sourceFileName = "Sample_Book2.xls";
            string imageFileName = "aspose-logo.png";

            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name));
            storageApi.PutCreate(sourceFileName, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + sourceFileName));
            storageApi.PutCreate(imageFileName, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + imageFileName)); 

            string sheetName = "Sheet1"; 
            int? upperLeftRow = null; 
            int? upperLeftColumn = null; 
            int? height = null; 
            int? width = null; 
            string oleFile = null; 
            string imageFile = null; 
            string storage = null; 
            string folder = null; 
            Com.Aspose.Cells.Model.OleObject body = new Com.Aspose.Cells.Model.OleObject(); 
            body.SourceFullName = sourceFileName;
            body.ImageSourceFullName = imageFileName;
            body.UpperLeftRow = 15;
            body.UpperLeftColumn = 5;
            body.Top = 10;
            body.Bottom = 10;
            body.Left = 10;
            body.Height = 400;
            body.Width = 400;
            body.IsAutoSize = true;


            
            Com.Aspose.Cells.Model.OleObjectResponse actual;
            actual = target.PutWorksheetOleObject(name, sheetName, upperLeftRow, upperLeftColumn, height, width, oleFile, imageFile, storage, folder, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.OleObjectResponse(), actual.GetType()); 
        }

        /// <summary>
        ///A test for PutWorksheetPivotTable
        ///</summary>
        [TestMethod()]
        public void TestPutWorksheetPivotTable()
        {
            CellsApi target = new CellsApi(APIKEY, APPSID, BASEPATH);
            StorageApi storageApi = new StorageApi(APIKEY, APPSID, BASEPATH);
            
            string name = "Sample_Test_Book.xls";
            
            storageApi.PutCreate(name, null, null, System.IO.File.ReadAllBytes("\\temp\\cells\\resources\\" + name)); 
            
            string sheetName = "Sheet1"; 
            string storage = null; 
            string folder = null; 
            string sourceData = null; 
            string destCellName = null; 
            string tableName = null; 
            bool? useSameSource = false;
            Com.Aspose.Cells.Model.CreatePivotTableRequest body = new Com.Aspose.Cells.Model.CreatePivotTableRequest(); 
            body.Name = "MyPivot";
            body.SourceData = "A5:E10";
            body.DestCellName ="H20";
            body.UseSameSource = true;
            body.PivotFieldRows = new System.Collections.Generic.List<int?> { 1};
            body.PivotFieldColumns = new System.Collections.Generic.List<int?> { 1 };
            body.PivotFieldData = new System.Collections.Generic.List<int?> { 1 };
            
            Com.Aspose.Cells.Model.PivotTableResponse actual;
            actual = target.PutWorksheetPivotTable(name, sheetName, storage, folder, sourceData, destCellName, tableName, useSameSource, body);
            Assert.AreEqual("200", actual.Code);
            Assert.IsInstanceOfType(new Com.Aspose.Cells.Model.PivotTableResponse(), actual.GetType()); 
        }
    }
}
