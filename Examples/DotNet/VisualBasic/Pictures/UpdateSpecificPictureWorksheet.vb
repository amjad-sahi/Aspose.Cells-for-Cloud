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
	Friend Class UpdateSpecificPictureWorksheet
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "sample1.xlsx"
			Dim output As String = "output.xlsx"
			Dim pic As String = "picture.png"
			Common.StorageService.File.UploadFile(dataDir & input, input, storage:= Common.STORAGE)
			Common.StorageService.File.UploadFile(dataDir & pic, pic, storage:= Common.STORAGE)

			Dim sheetName As String = "Sheet1"

			Dim CellsPicturesResponse As CellsPicturesResponse = Common.CellsService.Pictures.ReadWorksheetPictures(input, sheetName, Common.FOLDER, storage:= Common.STORAGE)

			Dim cellsPicture2 As New CellsPicture()
			cellsPicture2.BorderLineColor = New Color(5, 5, 5, 5)
			cellsPicture2.BorderWeight = 2
			cellsPicture2.OriginalHeight = 100
			cellsPicture2.OriginalWidth = 5
			cellsPicture2.ImageFormat = "Png"
			cellsPicture2.SourceFullName = pic
			cellsPicture2.Name = "Aspose"
			cellsPicture2.MsoDrawingType = String.Empty
			cellsPicture2.AutoShapeType = String.Empty
			cellsPicture2.Placement = String.Empty
			cellsPicture2.UpperLeftRow = 100
			cellsPicture2.Top = 100
			cellsPicture2.UpperLeftColumn = 100
			cellsPicture2.Left = 100
			cellsPicture2.LowerRightRow = 100
			cellsPicture2.Bottom = 100
			cellsPicture2.LowerRightColumn = 100
			cellsPicture2.Right = 100
			cellsPicture2.Width = 100
			cellsPicture2.Height = 100
			cellsPicture2.X = 100
			cellsPicture2.Y = 100
			cellsPicture2.RotationAngle = 190
			cellsPicture2.HtmlText = String.Empty
			cellsPicture2.Text = String.Empty
			cellsPicture2.AlternativeText = String.Empty
			cellsPicture2.TextHorizontalAlignment = String.Empty
			cellsPicture2.TextHorizontalOverflow = String.Empty
			cellsPicture2.TextOrientationType = String.Empty
			cellsPicture2.TextVerticalAlignment = String.Empty
			cellsPicture2.TextVerticalOverflow = String.Empty
			cellsPicture2.IsGroup = False
			cellsPicture2.IsHidden = False
			cellsPicture2.IsLockAspectRatio = False
			cellsPicture2.IsLocked = False
			cellsPicture2.IsPrintable = False
			cellsPicture2.IsTextWrapped = False
			cellsPicture2.IsWordArt = False
			cellsPicture2.LinkedCell = String.Empty
			cellsPicture2.ZOrderPosition = 0

			Common.CellsService.Pictures.UpdateWorksheetPictureByIndex(input, sheetName, 0, Common.FOLDER, cellsPicture2, storage:= Common.STORAGE)

			Common.StorageService.File.DownloadFile(input, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace

