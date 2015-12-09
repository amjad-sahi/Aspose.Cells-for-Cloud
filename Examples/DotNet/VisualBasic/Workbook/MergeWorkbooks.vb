'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Workbook
	Friend Class MergeWorkbooks
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample2.xlsx"
			Dim mergeWith As String = "sample3.xlsx"
			Dim output As String = "output.xlsx"

			Common.StorageService.File.UploadFile(dataDir &input, input, storage:= Common.STORAGE)
			Common.StorageService.File.UploadFile(dataDir &mergeWith, mergeWith, storage:= Common.STORAGE)

			Common.CellsService.Workbook.MergeWorkbooks(input, mergeWith, Common.FOLDER, storage:= Common.STORAGE)

            Common.StorageService.File.DownloadFile(input, dataDir & output, storage:=Common.STORAGE)
        End Sub
	End Class
End Namespace
