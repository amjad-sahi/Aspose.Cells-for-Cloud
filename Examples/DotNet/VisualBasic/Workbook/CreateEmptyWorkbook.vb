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
	Friend Class CreateEmptyWorkbook
		Shared Sub Main()
			Dim dataDir As String = Common.GetDataDir(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
			'string input = "sample1.tiff";
			Dim output As String = "output.xlsx"

			'Common.StorageService.File.UploadFile(dataDir + input, input, storage: Common.STORAGE);
			Dim apiResponse As WorkbookResponse = Common.CellsService.Workbook.CreateNewWorkbookUsingDeferentMethods(output, String.Empty, String.Empty, Common.FOLDER, storage:= Common.STORAGE)
'                        Common.GetImagingSdk().Frame.UpdatePropertiesOfFrameInExistingTiffImage(input, frameId,
'                            newWidth, newHeight, x, y, rectWidth, rectHeight, true, outPath,
'                            Common.FOLDER, storage: Common.STORAGE);
'                        Common.StorageService.File.DownloadFile(outPath, dataDir + output, storage: Common.STORAGE);
'            
			Common.StorageService.File.DownloadFile(output, dataDir & output, storage:= Common.STORAGE)
		End Sub
	End Class
End Namespace
