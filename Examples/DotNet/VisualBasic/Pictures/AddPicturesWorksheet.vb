'////////////////////////////////////////////////////////////////////////
' Copyright 2001-2015 Aspose Pty Ltd. All Rights Reserved.
'
' This file is part of Aspose.Imaging. The source code in this file
' is only intended as a supplement to the documentation, and is provided
' "as is", without warranty of any kind, either expressed or implied.
'////////////////////////////////////////////////////////////////////////

Imports Aspose.Cloud
Imports System
Namespace Aspose.Cells.Cloud.Examples.Pictures
	Friend Class AddPicturesWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim pic As String = "picture.png"
			Dim output As String = "output.xlsx"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)

			Common.StorageService.File.UploadFile(dataDir & pic, pic, storage:= Common.STORAGE)

			Dim sheetName As String = "Sheet1"


			Dim CellsPicturesResponse As CellsPicturesResponse = Common.CellsService.Pictures.ReadWorksheetPictures(input, sheetName, Common.FOLDER, storage:= Common.STORAGE)

			Dim cellsPicture As New CellsPicture()
			cellsPicture.AlternativeText = "Aspose"
			cellsPicture.BorderLineColor = New Color(5, 5, 5, 5)
			cellsPicture.BorderWeight = 2
			cellsPicture.Height = 100
			cellsPicture.Width = 100
			cellsPicture.SourceFullName = "picture.png"

			Common.CellsService.Pictures.AddANewWorksheetPicture(input, sheetName, 1, 1, 5, 5, "picture.png", cellsPicture, Common.FOLDER, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace

