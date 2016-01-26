'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Cells
	Friend Class SetFormulaForCellWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "ouput.xlsx"
			Dim sheetName As String = "Sheet1"
			Dim outPath As String = "outData/"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Common.CellsService.WorksheetColumns.SetCellValue(input, sheetName, "A12", "", "int", "sum(a1:a10)", Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath & input, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace

