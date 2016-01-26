'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports Aspose.Cloud.Common
Imports System
Imports System.Collections
Imports System.Collections.Generic

Namespace Aspose.Cells.Cloud.Examples.Worksheet
	Friend Class SortWorksheetData
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "output.xlsx"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim sheetName As String = "Sheet1"

			Dim dataSorter As New CellsDataSorterRequest()
			dataSorter.CaseSensitive = True
			dataSorter.HasHeaders = True

			Dim cellsKeyList As New CellsKeyList()
			cellsKeyList.Key = 0
			cellsKeyList.SortOrder = "DESCENDING"

			dataSorter.KeyList = New List(Of CellsKeyList)()

			dataSorter.KeyList.Add(cellsKeyList)

			Common.CellsService.Worksheets.SortWorksheetRange(input, sheetName, "A1:A10", dataSorter, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace

