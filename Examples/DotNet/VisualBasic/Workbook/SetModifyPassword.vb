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
	Friend Class SetModifyPassword
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "ouput.xlsx"

			Common.StorageService.File.UploadFile(dataDir &input, input, storage:= Common.STORAGE)

			Dim protectDocumentRequest As New ProtectDocumentRequest()
			protectDocumentRequest.Password = "Aspose"

			Common.CellsService.Workbook.ProtectDocumentFromChanges(input, Common.FOLDER, protectDocumentRequest, storage:= Common.STORAGE)

            Common.StorageService.File.DownloadFile(input, dataDir & output, storage:=Common.STORAGE)

        End Sub
	End Class
End Namespace
