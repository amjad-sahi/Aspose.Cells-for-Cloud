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
	Friend Class AddChart
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "output.xlsx"
			Dim sheetName As String = "Sheet1"
			Dim outPath As String = "cellsOut/"

			Common.StorageService.File.UploadFile(dataDir & input, outPath & input, storage:= Common.STORAGE)

			Common.CellsService.Charts.AddNewChartToWorksheet(input, sheetName, ChartType.Bar, 1, 1, 1, 1, "A1:B3", True, "", True, "Aspose.Cells for .NET", outPath, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(outPath & input, dataDir & output, storage:= Common.STORAGE)

		End Sub
	End Class
End Namespace

