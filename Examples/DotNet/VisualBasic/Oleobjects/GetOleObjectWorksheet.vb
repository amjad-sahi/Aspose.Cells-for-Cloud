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
	Friend Class GetOleObjectWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim sheetName As String = "Sheet1"

			Dim apiResult As CellsOleObjectResponse = Common.CellsService.OleObjects.GetOleObjectInfo(input, sheetName, 0, Common.FOLDER, storage:= Common.STORAGE)

			Console.WriteLine(" Result: " & apiResult.OleObject.FileFormatType.ToString())
		End Sub
	End Class
End Namespace

