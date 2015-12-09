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
	Friend Class ConvertToAnotherFormat
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)

			Dim input As String = "originalFormat.xlsx"
			Dim output As String = "output.pdf"
			Dim outPath As String = "cellsOut/"

			' Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);

			Common.CellsService.Workbook.ConvertWorkbookToSomeFormat(WorkbookExportFormat.Pdf, String.Empty, outPath & output, dataDir & input)

			'Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);

			Common.StorageService.File.DownloadFile(outPath & output, dataDir & output)
		End Sub
	End Class
End Namespace
