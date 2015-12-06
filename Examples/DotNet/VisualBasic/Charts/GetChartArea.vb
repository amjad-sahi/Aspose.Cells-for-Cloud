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
	Friend Class GetChartArea
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)
			Dim sheetName As String = "Sheet1"

			Dim apiResponse As ChartAreaResponse = Common.CellsService.ChartArea.GetChartAreaInfo(input, sheetName, 0, Common.FOLDER, storage:= Common.STORAGE)

			Console.WriteLine(" Response isAutoSize: " & apiResponse.ChartArea.IsAutomaticSize)

		End Sub
	End Class
End Namespace

