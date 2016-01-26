'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Oleobjects
	Friend Class UpdateSpecificOleObjectsWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "output.xlsx"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim sheetName As String = "Sheet1"

			Dim cellsOleObject As New CellsOleObject()
			cellsOleObject.SourceFullName = "ole.docx"
			cellsOleObject.ImageSourceFullName = "picture.png"
			cellsOleObject.UpperLeftRow = 10
			cellsOleObject.UpperLeftColumn = 10
			cellsOleObject.Top = 10
			cellsOleObject.Left = 20
			cellsOleObject.Height = 20
			cellsOleObject.Width = 20

			Common.CellsService.OleObjects.UpdateOleObject(input, sheetName, 0, cellsOleObject, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace

