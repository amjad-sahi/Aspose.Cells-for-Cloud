'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Charts
	Friend Class UpdateChartTitle
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "Sample1.xlsx"
			Dim output As String = "output.xlsx"
			Dim sheetName As String = "Sheet1"

			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Dim cellsChartResponse As CellsChartResponse = Common.CellsService.Charts.GetChartInfo(input, sheetName, 0, Common.FOLDER)

			Common.CellsService.Charts.UpdateChartTitle(input, sheetName, 0, cellsChartResponse.Chart, Common.FOLDER, storage:= Common.STORAGE)

			Common.CellsService.Charts.SetChartTitleVisible(input, sheetName, 0, cellsChartResponse.Chart, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace

