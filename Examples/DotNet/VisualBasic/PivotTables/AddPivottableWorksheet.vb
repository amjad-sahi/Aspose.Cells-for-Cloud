'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.PivotTables
	Friend Class AddPivottableWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "output.xlsx"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)
			Dim sheetName As String = "Sheet1"

			Dim createPivotTableRequest As New CreatePivotTableRequest()

			createPivotTableRequest.Name = "ASPOSE Pivot Table"
			createPivotTableRequest.SourceData = "A1:C7"
			createPivotTableRequest.DestCellName = "H10"
			createPivotTableRequest.UseSameSource = True

			createPivotTableRequest.PivotFieldRows = New System.Collections.Generic.List(Of Integer)()
			createPivotTableRequest.PivotFieldRows.Add(1)

			createPivotTableRequest.PivotFieldColumns = New System.Collections.Generic.List(Of Integer)()
			createPivotTableRequest.PivotFieldColumns.Add(1)

			createPivotTableRequest.PivotFieldData = New System.Collections.Generic.List(Of Integer)()
			createPivotTableRequest.PivotFieldData.Add(1)

			Common.CellsService.PivotTable.AddAPivotTableIntoWorksheet(input, sheetName, createPivotTableRequest, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace

