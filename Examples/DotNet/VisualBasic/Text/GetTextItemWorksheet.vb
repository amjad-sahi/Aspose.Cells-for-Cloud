'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Text
	Friend Class GetTextItemWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"

			Dim sheetName As String = "Sheet1"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim apiResponse As CellsTextItemsResponse = Common.CellsService.Worksheets.GetWorksheetTextItems(input, sheetName, Common.FOLDER, storage:= Common.STORAGE)

			Console.WriteLine(" Response Type: " & apiResponse.TextItems.GetType().ToString())
		End Sub
	End Class
End Namespace

