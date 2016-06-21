exports.models = {
  "CellsColor": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "ColorIndex" : {
      "$ref" : "int"
    },
    "IsShapeColor" : {
      "type" : "boolean"
    },
    "ThemeColor" : {
      "$ref" : "ThemeColor"
    },
    "Type" : {
      "type" : "string"
    }
  },
  "id" : "CellsColor"
},"Rows": {
  "properties" : {
    "MaxRow" : {
      "$ref" : "int"
    },
    "RowsCount" : {
      "$ref" : "int"
    },
    "RowsList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Rows"
},"CellsDocumentProperties": {
  "properties" : {
    "DocumentPropertyList" : {
      "type" : "array",
      "items" : {
        "$ref" : "CellsDocumentProperty"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "CellsDocumentProperties"
},"Cells": {
  "properties" : {
    "MaxRow" : {
      "$ref" : "int"
    },
    "MaxColumn" : {
      "$ref" : "int"
    },
    "CellCount" : {
      "$ref" : "int"
    },
    "Rows" : {
      "$ref" : "LinkElement"
    },
    "Columns" : {
      "$ref" : "LinkElement"
    },
    "CellList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Cells"
},"AutoFitterOptions": {
  "properties" : {
    "AutoFitMergedCells" : {
      "type" : "boolean"
    },
    "IgnoreHidden" : {
      "type" : "boolean"
    },
    "OnlyAuto" : {
      "type" : "boolean"
    }
  },
  "id" : "AutoFitterOptions"
},"ThemeColor": {
  "properties" : {
    "ColorType" : {
      "type" : "string"
    },
    "Tint" : {
      "$ref" : "double"
    }
  },
  "id" : "ThemeColor"
},"WorksheetReplaceResponse": {
  "properties" : {
    "Matches" : {
      "$ref" : "int"
    },
    "Worksheet" : {
      "$ref" : "LinkElement"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WorksheetReplaceResponse"
},"PivotTablesResponse": {
  "properties" : {
    "PivotTables" : {
      "$ref" : "PivotTables"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "PivotTablesResponse"
},"GradientFillStop": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "Position" : {
      "$ref" : "double"
    },
    "Transparency" : {
      "$ref" : "double"
    }
  },
  "id" : "GradientFillStop"
},"LinkElement": {
  "properties" : {
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "LinkElement"
},"ResponseMessage": {
  "properties" : {
    "Code" : {
      "$ref" : "int"
    },
    "Message" : {
      "type" : "string"
    }
  },
  "id" : "ResponseMessage"
},"PatternFill": {
  "properties" : {
    "Pattern" : {
      "type" : "string"
    },
    "BackgroundCellsColor" : {
      "$ref" : "CellsColor"
    },
    "ForegroundCellsColor" : {
      "$ref" : "CellsColor"
    },
    "ForegroundColor" : {
      "$ref" : "Color"
    },
    "BackgroundColor" : {
      "$ref" : "Color"
    },
    "BackTransparency" : {
      "$ref" : "double"
    },
    "ForeTransparency" : {
      "$ref" : "double"
    }
  },
  "id" : "PatternFill"
},"Worksheets": {
  "properties" : {
    "WorksheetList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Worksheets"
},"OleObjectResponse": {
  "properties" : {
    "OleObject" : {
      "$ref" : "OleObject"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "OleObjectResponse"
},"HyperlinkResponse": {
  "properties" : {
    "Hyperlink" : {
      "$ref" : "Hyperlink"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "HyperlinkResponse"
},"CellResponse": {
  "properties" : {
    "Cell" : {
      "$ref" : "Cell"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CellResponse"
},"HttpStatusCode": {
  "id" : "HttpStatusCode"
},"PivotTable": {
  "properties" : {
    "AltTextDescription" : {
      "type" : "string"
    },
    "AltTextTitle" : {
      "type" : "string"
    },
    "AutoFormatType" : {
      "type" : "string"
    },
    "BaseFields" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotField"
      }
    },
    "ColumnFields" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotField"
      }
    },
    "ColumnGrand" : {
      "type" : "boolean"
    },
    "ColumnHeaderCaption" : {
      "type" : "string"
    },
    "ColumnRange" : {
      "$ref" : "CellArea"
    },
    "CustomListSort" : {
      "type" : "boolean"
    },
    "DataBodyRange" : {
      "$ref" : "CellArea"
    },
    "DataField" : {
      "$ref" : "PivotField"
    },
    "DataFields" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotField"
      }
    },
    "DataSource" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    },
    "DisplayErrorString" : {
      "type" : "boolean"
    },
    "DisplayImmediateItems" : {
      "type" : "boolean"
    },
    "DisplayNullString" : {
      "type" : "boolean"
    },
    "EnableDataValueEditing" : {
      "type" : "boolean"
    },
    "EnableDrilldown" : {
      "type" : "boolean"
    },
    "EnableFieldDialog" : {
      "type" : "boolean"
    },
    "EnableFieldList" : {
      "type" : "boolean"
    },
    "EnableWizard" : {
      "type" : "boolean"
    },
    "ErrorString" : {
      "type" : "string"
    },
    "FieldListSortAscending" : {
      "type" : "boolean"
    },
    "GrandTotalName" : {
      "type" : "string"
    },
    "HasBlankRows" : {
      "type" : "boolean"
    },
    "Indent" : {
      "$ref" : "int"
    },
    "IsAutoFormat" : {
      "type" : "boolean"
    },
    "IsGridDropZones" : {
      "type" : "boolean"
    },
    "IsMultipleFieldFilters" : {
      "type" : "boolean"
    },
    "IsSelected" : {
      "type" : "boolean"
    },
    "ItemPrintTitles" : {
      "type" : "boolean"
    },
    "ManualUpdate" : {
      "type" : "boolean"
    },
    "MergeLabels" : {
      "type" : "boolean"
    },
    "MissingItemsLimit" : {
      "type" : "string"
    },
    "Name" : {
      "type" : "string"
    },
    "NullString" : {
      "type" : "string"
    },
    "PageFieldOrder" : {
      "type" : "string"
    },
    "PageFields" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotField"
      }
    },
    "PageFieldWrapCount" : {
      "$ref" : "int"
    },
    "PivotFilters" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotFilter"
      }
    },
    "PivotTableStyleName" : {
      "type" : "string"
    },
    "PivotTableStyleType" : {
      "type" : "string"
    },
    "PreserveFormatting" : {
      "type" : "boolean"
    },
    "PrintDrill" : {
      "type" : "boolean"
    },
    "PrintTitles" : {
      "type" : "boolean"
    },
    "RefreshDataFlag" : {
      "type" : "boolean"
    },
    "RefreshDataOnOpeningFile" : {
      "type" : "boolean"
    },
    "RowFields" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotField"
      }
    },
    "RowGrand" : {
      "type" : "boolean"
    },
    "RowHeaderCaption" : {
      "type" : "string"
    },
    "RowRange" : {
      "$ref" : "CellArea"
    },
    "SaveData" : {
      "type" : "boolean"
    },
    "ShowDataTips" : {
      "type" : "boolean"
    },
    "ShowDrill" : {
      "type" : "boolean"
    },
    "ShowEmptyCol" : {
      "type" : "boolean"
    },
    "ShowEmptyRow" : {
      "type" : "boolean"
    },
    "ShowMemberPropertyTips" : {
      "type" : "boolean"
    },
    "ShowPivotStyleColumnHeader" : {
      "type" : "boolean"
    },
    "ShowPivotStyleColumnStripes" : {
      "type" : "boolean"
    },
    "ShowPivotStyleLastColumn" : {
      "type" : "boolean"
    },
    "ShowPivotStyleRowHeader" : {
      "type" : "boolean"
    },
    "ShowPivotStyleRowStripes" : {
      "type" : "boolean"
    },
    "ShowRowHeaderCaption" : {
      "type" : "boolean"
    },
    "ShowValuesRow" : {
      "type" : "boolean"
    },
    "SubtotalHiddenPageItems" : {
      "type" : "boolean"
    },
    "TableRange1" : {
      "$ref" : "CellArea"
    },
    "TableRange2" : {
      "$ref" : "CellArea"
    },
    "Tag" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "PivotTable"
},"FilterColumn": {
  "properties" : {
    "FieldIndex" : {
      "$ref" : "int"
    },
    "FilterType" : {
      "type" : "string"
    },
    "MultipleFilters" : {
      "$ref" : "MultipleFilters"
    },
    "ColorFilter" : {
      "$ref" : "ColorFilter"
    },
    "CustomFilters" : {
      "type" : "array",
      "items" : {
        "$ref" : "CustomFilter"
      }
    },
    "DynamicFilter" : {
      "$ref" : "DynamicFilter"
    },
    "IconFilter" : {
      "$ref" : "IconFilter"
    },
    "Top10Filter" : {
      "$ref" : "Top10Filter"
    },
    "Visibledropdown" : {
      "type" : "string"
    }
  },
  "id" : "FilterColumn"
},"FillFormat": {
  "properties" : {
    "Type" : {
      "type" : "string"
    },
    "SolidFill" : {
      "$ref" : "SolidFill"
    },
    "PatternFill" : {
      "$ref" : "PatternFill"
    },
    "TextureFill" : {
      "$ref" : "TextureFill"
    },
    "GradientFill" : {
      "$ref" : "GradientFill"
    },
    "ImageData" : {
      "type" : "string"
    }
  },
  "id" : "FillFormat"
},"Comment": {
  "properties" : {
    "CellName" : {
      "type" : "string"
    },
    "Author" : {
      "type" : "string"
    },
    "HtmlNote" : {
      "type" : "string"
    },
    "Note" : {
      "type" : "string"
    },
    "AutoSize" : {
      "type" : "boolean"
    },
    "IsVisible" : {
      "type" : "boolean"
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "TextHorizontalAlignment" : {
      "type" : "string"
    },
    "TextOrientationType" : {
      "type" : "string"
    },
    "TextVerticalAlignment" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Comment"
},"SingleValueResponse": {
  "properties" : {
    "Value" : {
      "$ref" : "SingleValue"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SingleValueResponse"
},"Pictures": {
  "properties" : {
    "PictureList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Pictures"
},"Color": {
  "properties" : {
    "A" : {
      "type" : "string"
    },
    "R" : {
      "type" : "string"
    },
    "G" : {
      "type" : "string"
    },
    "B" : {
      "type" : "string"
    }
  },
  "id" : "Color"
},"ColumnResponse": {
  "properties" : {
    "Column" : {
      "$ref" : "Column"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ColumnResponse"
},"AutoShapes": {
  "properties" : {
    "AutoShapeList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "AutoShapes"
},"CustomFilter": {
  "properties" : {
    "Criteria" : {
      "type" : "object"
    },
    "FilterOperatorType" : {
      "type" : "string"
    }
  },
  "id" : "CustomFilter"
},"Row": {
  "properties" : {
    "GroupLevel" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "double"
    },
    "Index" : {
      "$ref" : "int"
    },
    "IsBlank" : {
      "type" : "boolean"
    },
    "IsHeightMatched" : {
      "type" : "boolean"
    },
    "IsHidden" : {
      "type" : "boolean"
    },
    "Style" : {
      "$ref" : "LinkElement"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Row"
},"WorksheetResponse": {
  "properties" : {
    "Worksheet" : {
      "$ref" : "Worksheet"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WorksheetResponse"
},"Hyperlinks": {
  "properties" : {
    "Count" : {
      "$ref" : "int"
    },
    "HyperlinkList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Hyperlinks"
},"SolidFill": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "CellsColor" : {
      "$ref" : "CellsColor"
    },
    "Transparency" : {
      "$ref" : "double"
    }
  },
  "id" : "SolidFill"
},"WorkbookEncryptionRequest": {
  "properties" : {
    "EncryptionType" : {
      "type" : "string"
    },
    "KeyLength" : {
      "$ref" : "int"
    },
    "Password" : {
      "type" : "string"
    }
  },
  "id" : "WorkbookEncryptionRequest"
},"Top10Filter": {
  "properties" : {
    "Criteria" : {
      "type" : "string"
    },
    "IsPercent" : {
      "type" : "string"
    },
    "IsTop" : {
      "type" : "string"
    },
    "Items" : {
      "$ref" : "int"
    }
  },
  "id" : "Top10Filter"
},"ColumnsResponse": {
  "properties" : {
    "Columns" : {
      "$ref" : "Columns"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ColumnsResponse"
},"PivotField": {
  "properties" : {
    "AutoShowCount" : {
      "$ref" : "int"
    },
    "AutoShowField" : {
      "$ref" : "int"
    },
    "AutoSortField" : {
      "$ref" : "int"
    },
    "BaseField" : {
      "$ref" : "int"
    },
    "BaseIndex" : {
      "$ref" : "int"
    },
    "BaseItem" : {
      "$ref" : "int"
    },
    "BaseItemPosition" : {
      "type" : "string"
    },
    "CurrentPageItem" : {
      "type" : "integer",
      "format" : "int32"
    },
    "DataDisplayFormat" : {
      "type" : "string"
    },
    "DisplayName" : {
      "type" : "string"
    },
    "DragToColumn" : {
      "type" : "boolean"
    },
    "DragToData" : {
      "type" : "boolean"
    },
    "DragToHide" : {
      "type" : "boolean"
    },
    "DragToPage" : {
      "type" : "boolean"
    },
    "DragToRow" : {
      "type" : "boolean"
    },
    "Function" : {
      "type" : "string"
    },
    "InsertBlankRow" : {
      "type" : "boolean"
    },
    "IsAscendShow" : {
      "type" : "boolean"
    },
    "IsAscendSort" : {
      "type" : "boolean"
    },
    "IsAutoShow" : {
      "type" : "boolean"
    },
    "IsAutoSort" : {
      "type" : "boolean"
    },
    "IsAutoSubtotals" : {
      "type" : "boolean"
    },
    "IsCalculatedField" : {
      "type" : "boolean"
    },
    "IsIncludeNewItemsInFilter" : {
      "type" : "boolean"
    },
    "IsInsertPageBreaksBetweenItems" : {
      "type" : "boolean"
    },
    "IsMultipleItemSelectionAllowed" : {
      "type" : "boolean"
    },
    "IsRepeatItemLabels" : {
      "type" : "boolean"
    },
    "ItemCount" : {
      "$ref" : "int"
    },
    "Items" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    },
    "Name" : {
      "type" : "string"
    },
    "Number" : {
      "$ref" : "int"
    },
    "NumberFormat" : {
      "type" : "string"
    },
    "OriginalItems" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    },
    "PivotItems" : {
      "type" : "array",
      "items" : {
        "$ref" : "PivotItem"
      }
    },
    "Position" : {
      "$ref" : "int"
    },
    "ShowAllItems" : {
      "type" : "boolean"
    },
    "ShowCompact" : {
      "type" : "boolean"
    },
    "ShowInOutlineForm" : {
      "type" : "boolean"
    },
    "ShowSubtotalAtTop" : {
      "type" : "boolean"
    }
  },
  "id" : "PivotField"
},"Cell": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Row" : {
      "$ref" : "int"
    },
    "Column" : {
      "$ref" : "int"
    },
    "Value" : {
      "type" : "string"
    },
    "Type" : {
      "type" : "string"
    },
    "Formula" : {
      "type" : "string"
    },
    "IsFormula" : {
      "type" : "boolean"
    },
    "IsMerged" : {
      "type" : "boolean"
    },
    "IsArrayHeader" : {
      "type" : "boolean"
    },
    "IsInArray" : {
      "type" : "boolean"
    },
    "IsErrorValue" : {
      "type" : "boolean"
    },
    "IsInTable" : {
      "type" : "boolean"
    },
    "IsStyleSet" : {
      "type" : "boolean"
    },
    "HtmlString" : {
      "type" : "string"
    },
    "Style" : {
      "$ref" : "LinkElement"
    },
    "Worksheet" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Cell"
},"DataSorter": {
  "properties" : {
    "CaseSensitive" : {
      "type" : "string"
    },
    "HasHeaders" : {
      "type" : "string"
    },
    "KeyList" : {
      "type" : "array",
      "items" : {
        "$ref" : "SortKey"
      }
    },
    "SortLeftToRight" : {
      "type" : "string"
    }
  },
  "id" : "DataSorter"
},"NameResponse": {
  "properties" : {
    "Name" : {
      "$ref" : "Name"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "NameResponse"
},"TilePicOption": {
  "properties" : {
    "OffsetX" : {
      "$ref" : "double"
    },
    "OffsetY" : {
      "$ref" : "double"
    },
    "ScaleX" : {
      "$ref" : "double"
    },
    "ScaleY" : {
      "$ref" : "double"
    },
    "AlignmentType" : {
      "type" : "string"
    },
    "MirrorType" : {
      "type" : "string"
    }
  },
  "id" : "TilePicOption"
},"StyleResponse": {
  "properties" : {
    "Style" : {
      "$ref" : "Style"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "StyleResponse"
},"AutoShapesResponse": {
  "properties" : {
    "AutoShapes" : {
      "$ref" : "AutoShapes"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "AutoShapesResponse"
},"ReportType": {
  "id" : "ReportType"
},"Legend": {
  "properties" : {
    "Position" : {
      "type" : "string"
    },
    "LegendEntries" : {
      "$ref" : "LinkElement"
    },
    "Area" : {
      "$ref" : "Area"
    },
    "AutoScaleFont" : {
      "type" : "boolean"
    },
    "BackgroundMode" : {
      "type" : "string"
    },
    "Border" : {
      "$ref" : "Line"
    },
    "Font" : {
      "$ref" : "Font"
    },
    "IsAutomaticSize" : {
      "type" : "boolean"
    },
    "IsInnerMode" : {
      "type" : "boolean"
    },
    "Shadow" : {
      "type" : "boolean"
    },
    "ShapeProperties" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Legend"
},"Worksheet": {
  "properties" : {
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    },
    "DisplayRightToLeft" : {
      "type" : "boolean"
    },
    "DisplayZeros" : {
      "type" : "boolean"
    },
    "FirstVisibleColumn" : {
      "$ref" : "int"
    },
    "FirstVisibleRow" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    },
    "Index" : {
      "$ref" : "int"
    },
    "IsGridlinesVisible" : {
      "type" : "boolean"
    },
    "IsOutlineShown" : {
      "type" : "boolean"
    },
    "IsPageBreakPreview" : {
      "type" : "boolean"
    },
    "IsVisible" : {
      "type" : "boolean"
    },
    "IsProtected" : {
      "type" : "boolean"
    },
    "IsRowColumnHeadersVisible" : {
      "type" : "boolean"
    },
    "IsRulerVisible" : {
      "type" : "boolean"
    },
    "IsSelected" : {
      "type" : "boolean"
    },
    "TabColor" : {
      "$ref" : "Color"
    },
    "TransitionEntry" : {
      "type" : "boolean"
    },
    "TransitionEvaluation" : {
      "type" : "boolean"
    },
    "Type" : {
      "type" : "string"
    },
    "ViewType" : {
      "type" : "string"
    },
    "VisibilityType" : {
      "type" : "string"
    },
    "Zoom" : {
      "$ref" : "int"
    },
    "Cells" : {
      "$ref" : "LinkElement"
    },
    "Charts" : {
      "$ref" : "LinkElement"
    },
    "AutoShapes" : {
      "$ref" : "LinkElement"
    },
    "OleObjects" : {
      "$ref" : "LinkElement"
    },
    "Comments" : {
      "$ref" : "LinkElement"
    },
    "Pictures" : {
      "$ref" : "LinkElement"
    },
    "MergedCells" : {
      "$ref" : "LinkElement"
    },
    "Validations" : {
      "$ref" : "LinkElement"
    },
    "ConditionalFormattings" : {
      "$ref" : "LinkElement"
    },
    "Hyperlinks" : {
      "$ref" : "LinkElement"
    }
  },
  "id" : "Worksheet"
},"TextItemsResponse": {
  "properties" : {
    "TextItems" : {
      "$ref" : "TextItems"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TextItemsResponse"
},"RowsResponse": {
  "properties" : {
    "Rows" : {
      "$ref" : "Rows"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "RowsResponse"
},"Font": {
  "properties" : {
    "Color" : {
      "$ref" : "Color"
    },
    "DoubleSize" : {
      "$ref" : "double"
    },
    "IsBold" : {
      "type" : "boolean"
    },
    "IsItalic" : {
      "type" : "boolean"
    },
    "IsStrikeout" : {
      "type" : "boolean"
    },
    "IsSubscript" : {
      "type" : "boolean"
    },
    "IsSuperscript" : {
      "type" : "boolean"
    },
    "Name" : {
      "type" : "string"
    },
    "Size" : {
      "$ref" : "int"
    },
    "Underline" : {
      "type" : "string"
    }
  },
  "id" : "Font"
},"PivotTableFieldRequest": {
  "properties" : {
    "Data" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    }
  },
  "id" : "PivotTableFieldRequest"
},"Underline": {
  "id" : "Underline"
},"Charts": {
  "properties" : {
    "ChartList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Charts"
},"PictureResponse": {
  "properties" : {
    "Picture" : {
      "$ref" : "Picture"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "PictureResponse"
},"PivotTables": {
  "properties" : {
    "PivotTableList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "PivotTables"
},"Picture": {
  "properties" : {
    "BorderLineColor" : {
      "$ref" : "Color"
    },
    "BorderWeight" : {
      "$ref" : "double"
    },
    "OriginalHeight" : {
      "$ref" : "int"
    },
    "OriginalWidth" : {
      "$ref" : "int"
    },
    "ImageFormat" : {
      "type" : "string"
    },
    "SourceFullName" : {
      "type" : "string"
    },
    "Name" : {
      "type" : "string"
    },
    "MsoDrawingType" : {
      "type" : "string"
    },
    "AutoShapeType" : {
      "type" : "string"
    },
    "Placement" : {
      "type" : "string"
    },
    "UpperLeftRow" : {
      "$ref" : "int"
    },
    "Top" : {
      "$ref" : "int"
    },
    "UpperLeftColumn" : {
      "$ref" : "int"
    },
    "Left" : {
      "$ref" : "int"
    },
    "LowerRightRow" : {
      "$ref" : "int"
    },
    "Bottom" : {
      "$ref" : "int"
    },
    "LowerRightColumn" : {
      "$ref" : "int"
    },
    "Right" : {
      "$ref" : "int"
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "RotationAngle" : {
      "$ref" : "double"
    },
    "HtmlText" : {
      "type" : "string"
    },
    "Text" : {
      "type" : "string"
    },
    "AlternativeText" : {
      "type" : "string"
    },
    "TextHorizontalAlignment" : {
      "type" : "string"
    },
    "TextHorizontalOverflow" : {
      "type" : "string"
    },
    "TextOrientationType" : {
      "type" : "string"
    },
    "TextVerticalAlignment" : {
      "type" : "string"
    },
    "TextVerticalOverflow" : {
      "type" : "string"
    },
    "IsGroup" : {
      "type" : "boolean"
    },
    "IsHidden" : {
      "type" : "boolean"
    },
    "IsLockAspectRatio" : {
      "type" : "boolean"
    },
    "IsLocked" : {
      "type" : "boolean"
    },
    "IsPrintable" : {
      "type" : "boolean"
    },
    "IsTextWrapped" : {
      "type" : "boolean"
    },
    "IsWordArt" : {
      "type" : "boolean"
    },
    "LinkedCell" : {
      "type" : "string"
    },
    "ZOrderPosition" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Picture"
},"ValidationResponse": {
  "properties" : {
    "Validation" : {
      "$ref" : "Validation"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ValidationResponse"
},"SaveResult": {
  "properties" : {
    "SourceDocument" : {
      "$ref" : "Link"
    },
    "DestDocument" : {
      "$ref" : "Link"
    },
    "AdditionalItems" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    }
  },
  "id" : "SaveResult"
},"Orientation": {
  "id" : "Orientation"
},"CellsResponse": {
  "properties" : {
    "Cells" : {
      "$ref" : "Cells"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CellsResponse"
},"Title": {
  "properties" : {
    "IsVisible" : {
      "type" : "boolean"
    },
    "LinkedSource" : {
      "type" : "string"
    },
    "RotationAngle" : {
      "$ref" : "int"
    },
    "Text" : {
      "type" : "string"
    },
    "TextDirection" : {
      "type" : "string"
    },
    "TextHorizontalAlignment" : {
      "type" : "string"
    },
    "TextVerticalAlignment" : {
      "type" : "string"
    },
    "Area" : {
      "$ref" : "Area"
    },
    "AutoScaleFont" : {
      "type" : "boolean"
    },
    "BackgroundMode" : {
      "type" : "string"
    },
    "Border" : {
      "$ref" : "Line"
    },
    "Font" : {
      "$ref" : "Font"
    },
    "IsAutomaticSize" : {
      "type" : "boolean"
    },
    "IsInnerMode" : {
      "type" : "boolean"
    },
    "Shadow" : {
      "type" : "boolean"
    },
    "ShapeProperties" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Title"
},"DynamicFilter": {
  "properties" : {
    "DynamicFilterType" : {
      "type" : "string"
    },
    "MaxValue" : {
      "type" : "object"
    },
    "Value" : {
      "type" : "object"
    }
  },
  "id" : "DynamicFilter"
},"PicFormatOption": {
  "properties" : {
    "Type" : {
      "type" : "string"
    },
    "Scale" : {
      "$ref" : "double"
    },
    "Left" : {
      "$ref" : "double"
    },
    "Right" : {
      "$ref" : "double"
    },
    "Top" : {
      "$ref" : "double"
    },
    "Bottom" : {
      "$ref" : "double"
    }
  },
  "id" : "PicFormatOption"
},"CommentsResponse": {
  "properties" : {
    "Comments" : {
      "$ref" : "Comments"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CommentsResponse"
},"Link": {
  "properties" : {
    "Href" : {
      "type" : "string"
    },
    "Rel" : {
      "type" : "string"
    },
    "Type" : {
      "type" : "string"
    },
    "Title" : {
      "type" : "string"
    }
  },
  "id" : "Link"
},"ImportOption": {
  "properties" : {
    "DestinationWorksheet" : {
      "type" : "string"
    },
    "IsInsert" : {
      "type" : "boolean"
    }
  },
  "id" : "ImportOption"
},"NamesResponse": {
  "properties" : {
    "Names" : {
      "$ref" : "Names"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "NamesResponse"
},"Line": {
  "properties" : {
    "BeginArrowLength" : {
      "type" : "string"
    },
    "BeginArrowWidth" : {
      "type" : "string"
    },
    "BeginType" : {
      "type" : "string"
    },
    "CapType" : {
      "type" : "string"
    },
    "Color" : {
      "$ref" : "Color"
    },
    "CompoundType" : {
      "type" : "string"
    },
    "DashType" : {
      "type" : "string"
    },
    "EndArrowLength" : {
      "type" : "string"
    },
    "EndArrowWidth" : {
      "type" : "string"
    },
    "EndType" : {
      "type" : "string"
    },
    "GradientFill" : {
      "$ref" : "GradientFill"
    },
    "IsAuto" : {
      "type" : "boolean"
    },
    "IsAutomaticColor" : {
      "type" : "boolean"
    },
    "IsVisible" : {
      "type" : "boolean"
    },
    "JoinType" : {
      "type" : "string"
    },
    "Style" : {
      "type" : "string"
    },
    "Transparency" : {
      "$ref" : "double"
    },
    "Weight" : {
      "type" : "string"
    },
    "WeightPt" : {
      "$ref" : "double"
    }
  },
  "id" : "Line"
},"Workbook": {
  "properties" : {
    "FileName" : {
      "type" : "string"
    },
    "Links" : {
      "type" : "array",
      "items" : {
        "$ref" : "Link"
      }
    },
    "Worksheets" : {
      "$ref" : "LinkElement"
    },
    "DefaultStyle" : {
      "$ref" : "LinkElement"
    },
    "DocumentProperties" : {
      "$ref" : "LinkElement"
    },
    "Names" : {
      "$ref" : "LinkElement"
    },
    "IsWriteProtected" : {
      "type" : "string"
    },
    "IsProtected" : {
      "type" : "string"
    },
    "IsEncryption" : {
      "type" : "string"
    },
    "Password" : {
      "type" : "string"
    }
  },
  "id" : "Workbook"
},"SplitResultResponse": {
  "properties" : {
    "Result" : {
      "$ref" : "SplitResult"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SplitResultResponse"
},"TextEffect": {
  "id" : "TextEffect"
},"ValueType": {
  "id" : "ValueType"
},"PivotFilter": {
  "properties" : {
    "AutoFilter" : {
      "$ref" : "AutoFilter"
    },
    "EvaluationOrder" : {
      "$ref" : "int"
    },
    "FieldIndex" : {
      "$ref" : "int"
    },
    "FilterType" : {
      "type" : "string"
    },
    "MeasureFldIndex" : {
      "$ref" : "int"
    },
    "MemberPropertyFieldIndex" : {
      "$ref" : "int"
    },
    "Name" : {
      "type" : "string"
    },
    "Value1" : {
      "type" : "string"
    },
    "Value2" : {
      "type" : "string"
    }
  },
  "id" : "PivotFilter"
},"Area": {
  "properties" : {
    "BackgroundColor" : {
      "$ref" : "Color"
    },
    "FillFormat" : {
      "$ref" : "FillFormat"
    },
    "ForegroundColor" : {
      "$ref" : "Color"
    },
    "Formatting" : {
      "type" : "string"
    },
    "InvertIfNegative" : {
      "type" : "boolean"
    },
    "Transparency" : {
      "$ref" : "double"
    }
  },
  "id" : "Area"
},"OleObjects": {
  "properties" : {
    "OleObjectList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "OleObjects"
},"PivotItem": {
  "properties" : {
    "Index" : {
      "$ref" : "int"
    },
    "IsHidden" : {
      "type" : "boolean"
    },
    "Name" : {
      "type" : "string"
    },
    "Value" : {
      "type" : "object"
    }
  },
  "id" : "PivotItem"
},"Style": {
  "properties" : {
    "Font" : {
      "$ref" : "Font"
    },
    "Name" : {
      "type" : "string"
    },
    "CultureCustom" : {
      "type" : "string"
    },
    "Custom" : {
      "type" : "string"
    },
    "BackgroundColor" : {
      "$ref" : "Color"
    },
    "ForegroundColor" : {
      "$ref" : "Color"
    },
    "IsFormulaHidden" : {
      "type" : "boolean"
    },
    "IsDateTime" : {
      "type" : "boolean"
    },
    "IsTextWrapped" : {
      "type" : "boolean"
    },
    "IsGradient" : {
      "type" : "boolean"
    },
    "IsLocked" : {
      "type" : "boolean"
    },
    "IsPercent" : {
      "type" : "boolean"
    },
    "ShrinkToFit" : {
      "type" : "boolean"
    },
    "IndentLevel" : {
      "$ref" : "int"
    },
    "Number" : {
      "$ref" : "int"
    },
    "RotationAngle" : {
      "$ref" : "int"
    },
    "Pattern" : {
      "type" : "string"
    },
    "TextDirection" : {
      "type" : "string"
    },
    "VerticalAlignment" : {
      "type" : "string"
    },
    "HorizontalAlignment" : {
      "type" : "string"
    },
    "BorderCollection" : {
      "type" : "array",
      "items" : {
        "$ref" : "Border"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Style"
},"OleObject": {
  "properties" : {
    "DisplayAsIcon" : {
      "type" : "boolean"
    },
    "FileFormatType" : {
      "type" : "string"
    },
    "ImageSourceFullName" : {
      "type" : "string"
    },
    "IsAutoSize" : {
      "type" : "boolean"
    },
    "IsLink" : {
      "type" : "boolean"
    },
    "ProgID" : {
      "type" : "string"
    },
    "SourceFullName" : {
      "type" : "string"
    },
    "Name" : {
      "type" : "string"
    },
    "MsoDrawingType" : {
      "type" : "string"
    },
    "AutoShapeType" : {
      "type" : "string"
    },
    "Placement" : {
      "type" : "string"
    },
    "UpperLeftRow" : {
      "$ref" : "int"
    },
    "Top" : {
      "$ref" : "int"
    },
    "UpperLeftColumn" : {
      "$ref" : "int"
    },
    "Left" : {
      "$ref" : "int"
    },
    "LowerRightRow" : {
      "$ref" : "int"
    },
    "Bottom" : {
      "$ref" : "int"
    },
    "LowerRightColumn" : {
      "$ref" : "int"
    },
    "Right" : {
      "$ref" : "int"
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "RotationAngle" : {
      "$ref" : "double"
    },
    "HtmlText" : {
      "type" : "string"
    },
    "Text" : {
      "type" : "string"
    },
    "AlternativeText" : {
      "type" : "string"
    },
    "TextHorizontalAlignment" : {
      "type" : "string"
    },
    "TextHorizontalOverflow" : {
      "type" : "string"
    },
    "TextOrientationType" : {
      "type" : "string"
    },
    "TextVerticalAlignment" : {
      "type" : "string"
    },
    "TextVerticalOverflow" : {
      "type" : "string"
    },
    "IsGroup" : {
      "type" : "boolean"
    },
    "IsHidden" : {
      "type" : "boolean"
    },
    "IsLockAspectRatio" : {
      "type" : "boolean"
    },
    "IsLocked" : {
      "type" : "boolean"
    },
    "IsPrintable" : {
      "type" : "boolean"
    },
    "IsTextWrapped" : {
      "type" : "boolean"
    },
    "IsWordArt" : {
      "type" : "boolean"
    },
    "LinkedCell" : {
      "type" : "string"
    },
    "ZOrderPosition" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "OleObject"
},"TextItems": {
  "properties" : {
    "TextItemList" : {
      "type" : "array",
      "items" : {
        "$ref" : "TextItem"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "TextItems"
},"CreatePivotTableRequest": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "SourceData" : {
      "type" : "string"
    },
    "DestCellName" : {
      "type" : "string"
    },
    "UseSameSource" : {
      "type" : "boolean"
    },
    "PivotFieldRows" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    },
    "PivotFieldColumns" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    },
    "PivotFieldData" : {
      "type" : "array",
      "items" : {
        "$ref" : "int"
      }
    }
  },
  "id" : "CreatePivotTableRequest"
},"PasswordRequest": {
  "properties" : {
    "Password" : {
      "type" : "string"
    }
  },
  "id" : "PasswordRequest"
},"ChartAreaResponse": {
  "properties" : {
    "ChartArea" : {
      "$ref" : "ChartArea"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ChartAreaResponse"
},"DateTimeGroupItem": {
  "properties" : {
    "DateTimeGroupingType" : {
      "type" : "string"
    },
    "Day" : {
      "$ref" : "int"
    },
    "Hour" : {
      "$ref" : "int"
    },
    "Minute" : {
      "$ref" : "int"
    },
    "Month" : {
      "$ref" : "int"
    },
    "Second" : {
      "$ref" : "int"
    },
    "Year" : {
      "$ref" : "int"
    }
  },
  "id" : "DateTimeGroupItem"
},"Validation": {
  "properties" : {
    "AlertStyle" : {
      "type" : "string"
    },
    "AreaList" : {
      "type" : "array",
      "items" : {
        "$ref" : "CellArea"
      }
    },
    "ErrorMessage" : {
      "type" : "string"
    },
    "ErrorTitle" : {
      "type" : "string"
    },
    "Formula1" : {
      "type" : "string"
    },
    "Formula2" : {
      "type" : "string"
    },
    "IgnoreBlank" : {
      "type" : "boolean"
    },
    "InCellDropDown" : {
      "type" : "boolean"
    },
    "InputMessage" : {
      "type" : "string"
    },
    "InputTitle" : {
      "type" : "string"
    },
    "Operator" : {
      "type" : "string"
    },
    "ShowError" : {
      "type" : "boolean"
    },
    "ShowInput" : {
      "type" : "boolean"
    },
    "Type" : {
      "type" : "string"
    },
    "Value1" : {
      "type" : "string"
    },
    "Value2" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Validation"
},"MergedCells": {
  "properties" : {
    "Count" : {
      "$ref" : "int"
    },
    "MergedCellList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "MergedCells"
},"MergedCellResponse": {
  "properties" : {
    "MergedCell" : {
      "$ref" : "MergedCell"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "MergedCellResponse"
},"Column": {
  "properties" : {
    "GroupLevel" : {
      "$ref" : "int"
    },
    "Index" : {
      "$ref" : "int"
    },
    "IsHidden" : {
      "type" : "boolean"
    },
    "Width" : {
      "$ref" : "double"
    },
    "Style" : {
      "$ref" : "LinkElement"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Column"
},"PaperSize": {
  "id" : "PaperSize"
},"MergedCell": {
  "properties" : {
    "EndColumn" : {
      "$ref" : "int"
    },
    "EndRow" : {
      "$ref" : "int"
    },
    "StartColumn" : {
      "$ref" : "int"
    },
    "StartRow" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "MergedCell"
},"CellsDocumentPropertiesResponse": {
  "properties" : {
    "DocumentProperties" : {
      "$ref" : "CellsDocumentProperties"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CellsDocumentPropertiesResponse"
},"PicturesResponse": {
  "properties" : {
    "Pictures" : {
      "$ref" : "Pictures"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "PicturesResponse"
},"Comments": {
  "properties" : {
    "CommentList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Comments"
},"Border": {
  "properties" : {
    "LineStyle" : {
      "type" : "string"
    },
    "Color" : {
      "$ref" : "Color"
    },
    "BorderType" : {
      "type" : "string"
    }
  },
  "id" : "Border"
},"SaveResponse": {
  "properties" : {
    "SaveResult" : {
      "$ref" : "SaveResult"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SaveResponse"
},"SaveOptions": {
  "properties" : {
    "CachedFileFolder" : {
      "type" : "string"
    },
    "ClearData" : {
      "type" : "boolean"
    },
    "CreateDirectory" : {
      "type" : "boolean"
    },
    "EnableHTTPCompression" : {
      "type" : "boolean"
    },
    "RefreshChartCache" : {
      "type" : "boolean"
    },
    "SortNames" : {
      "type" : "boolean"
    },
    "ValidateMergedAreas" : {
      "type" : "boolean"
    }
  },
  "id" : "SaveOptions"
},"SplitResultDocument": {
  "properties" : {
    "Id" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "SplitResultDocument"
},"NumberStyle": {
  "id" : "NumberStyle"
},"LineResponse": {
  "properties" : {
    "Line" : {
      "$ref" : "Line"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "LineResponse"
},"ChartArea": {
  "properties" : {
    "Area" : {
      "$ref" : "Area"
    },
    "AutoScaleFont" : {
      "type" : "boolean"
    },
    "BackgroundMode" : {
      "type" : "string"
    },
    "Border" : {
      "$ref" : "Line"
    },
    "Font" : {
      "$ref" : "Font"
    },
    "IsAutomaticSize" : {
      "type" : "boolean"
    },
    "IsInnerMode" : {
      "type" : "boolean"
    },
    "Shadow" : {
      "type" : "boolean"
    },
    "ShapeProperties" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "Width" : {
      "$ref" : "int"
    },
    "Height" : {
      "$ref" : "int"
    },
    "X" : {
      "$ref" : "int"
    },
    "Y" : {
      "$ref" : "int"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "ChartArea"
},"Names": {
  "properties" : {
    "Count" : {
      "$ref" : "int"
    },
    "NameList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Names"
},"ProtectSheetParameter": {
  "properties" : {
    "ProtectionType" : {
      "type" : "string"
    },
    "Password" : {
      "type" : "string"
    },
    "AllowEditArea" : {
      "type" : "array",
      "items" : {
        "$ref" : "string"
      }
    },
    "AllowDeletingColumn" : {
      "type" : "string"
    },
    "AllowDeletingRow" : {
      "type" : "string"
    },
    "AllowFiltering" : {
      "type" : "string"
    },
    "AllowFormattingCell" : {
      "type" : "string"
    },
    "AllowFormattingColumn" : {
      "type" : "string"
    },
    "AllowFormattingRow" : {
      "type" : "string"
    },
    "AllowInsertingColumn" : {
      "type" : "string"
    },
    "AllowInsertingHyperlink" : {
      "type" : "string"
    },
    "AllowInsertingRow" : {
      "type" : "string"
    },
    "AllowSelectingLockedCell" : {
      "type" : "string"
    },
    "AllowSelectingUnlockedCell" : {
      "type" : "string"
    },
    "AllowSorting" : {
      "type" : "string"
    },
    "AllowUsingPivotTable" : {
      "type" : "string"
    }
  },
  "id" : "ProtectSheetParameter"
},"BarcodeResponseList": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "BarcodeResponseList"
},"CellsDocumentProperty": {
  "properties" : {
    "Name" : {
      "type" : "string"
    },
    "Value" : {
      "type" : "string"
    },
    "BuiltIn" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "CellsDocumentProperty"
},"OleObjectsResponse": {
  "properties" : {
    "OleObjects" : {
      "$ref" : "OleObjects"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "OleObjectsResponse"
},"TextItem": {
  "properties" : {
    "Text" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "TextItem"
},"SingleValue": {
  "properties" : {
    "ValueType" : {
      "$ref" : "ValueType"
    },
    "Value" : {
      "type" : "string"
    }
  },
  "id" : "SingleValue"
},"String": {
  "properties" : {
    "Chars" : {
      "$ref" : "char"
    },
    "Length" : {
      "$ref" : "int"
    }
  },
  "id" : "String"
},"SectionStart": {
  "id" : "SectionStart"
},"SortKey": {
  "properties" : {
    "Key" : {
      "$ref" : "int"
    },
    "SortOrder" : {
      "type" : "string"
    }
  },
  "id" : "SortKey"
},"HttpResponseMessage": {
  "properties" : {
    "Content" : {
      "type" : "string"
    },
    "Headers" : {
      "type" : "string"
    },
    "IsSuccessStatusCode" : {
      "$ref" : "bool"
    },
    "ReasonPhrase" : {
      "type" : "string"
    },
    "RequestMessage" : {
      "type" : "string"
    },
    "StatusCode" : {
      "type" : "string"
    },
    "Version" : {
      "type" : "string"
    }
  },
  "id" : "HttpResponseMessage"
},"CellsDocumentPropertyResponse": {
  "properties" : {
    "DocumentProperty" : {
      "$ref" : "CellsDocumentProperty"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CellsDocumentPropertyResponse"
},"LegendResponse": {
  "properties" : {
    "Legend" : {
      "$ref" : "Legend"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "LegendResponse"
},"TitleResponse": {
  "properties" : {
    "Title" : {
      "$ref" : "Title"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "TitleResponse"
},"WorkbookProtectionRequest": {
  "properties" : {
    "ProtectionType" : {
      "type" : "string"
    },
    "Password" : {
      "type" : "string"
    }
  },
  "id" : "WorkbookProtectionRequest"
},"Columns": {
  "properties" : {
    "MaxColumn" : {
      "$ref" : "int"
    },
    "ColumnsCount" : {
      "$ref" : "int"
    },
    "ColumnsList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Columns"
},"PageBorderAppliesTo": {
  "id" : "PageBorderAppliesTo"
},"FillFormatResponse": {
  "properties" : {
    "FillFormat" : {
      "$ref" : "FillFormat"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "FillFormatResponse"
},"AutoFilter": {
  "properties" : {
    "FilterColumns" : {
      "type" : "array",
      "items" : {
        "$ref" : "FilterColumn"
      }
    },
    "Range" : {
      "type" : "string"
    },
    "Sorter" : {
      "$ref" : "DataSorter"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "AutoFilter"
},"ColorFilter": {
  "properties" : {
    "FilterByFillColor" : {
      "type" : "string"
    }
  },
  "id" : "ColorFilter"
},"WorksheetsResponse": {
  "properties" : {
    "Worksheets" : {
      "$ref" : "Worksheets"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WorksheetsResponse"
},"PageBorderDistanceFrom": {
  "id" : "PageBorderDistanceFrom"
},"LineNumberRestartMode": {
  "id" : "LineNumberRestartMode"
},"SplitResult": {
  "properties" : {
    "Documents" : {
      "type" : "array",
      "items" : {
        "$ref" : "SplitResultDocument"
      }
    }
  },
  "id" : "SplitResult"
},"MultipleFilters": {
  "properties" : {
    "MatchBlank" : {
      "type" : "string"
    },
    "MultipleFilterList" : {
      "type" : "array",
      "items" : {
        "$ref" : "DateTimeGroupItem"
      }
    }
  },
  "id" : "MultipleFilters"
},"CellArea": {
  "properties" : {
    "EndColumn" : {
      "$ref" : "int"
    },
    "EndRow" : {
      "$ref" : "int"
    },
    "StartColumn" : {
      "$ref" : "int"
    },
    "StartRow" : {
      "$ref" : "int"
    }
  },
  "id" : "CellArea"
},"ValidationsResponse": {
  "properties" : {
    "Validations" : {
      "$ref" : "Validations"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ValidationsResponse"
},"IconFilter": {
  "properties" : {
    "IconId" : {
      "$ref" : "int"
    },
    "IconSetType" : {
      "type" : "string"
    }
  },
  "id" : "IconFilter"
},"WorksheetMovingRequest": {
  "properties" : {
    "DestinationWorksheet" : {
      "type" : "string"
    },
    "Position" : {
      "type" : "string"
    }
  },
  "id" : "WorksheetMovingRequest"
},"MergedCellsResponse": {
  "properties" : {
    "MergedCells" : {
      "$ref" : "MergedCells"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "MergedCellsResponse"
},"Hyperlink": {
  "properties" : {
    "Address" : {
      "type" : "string"
    },
    "Area" : {
      "$ref" : "CellArea"
    },
    "ScreenTip" : {
      "type" : "string"
    },
    "TextToDisplay" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Hyperlink"
},"TextureFill": {
  "properties" : {
    "Type" : {
      "type" : "string"
    },
    "Transparency" : {
      "$ref" : "double"
    },
    "Scale" : {
      "$ref" : "double"
    },
    "TilePicOption" : {
      "$ref" : "TilePicOption"
    },
    "PicFormatOption" : {
      "$ref" : "PicFormatOption"
    },
    "Image" : {
      "$ref" : "LinkElement"
    }
  },
  "id" : "TextureFill"
},"CommentResponse": {
  "properties" : {
    "Comment" : {
      "$ref" : "Comment"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "CommentResponse"
},"PageVerticalAlignment": {
  "id" : "PageVerticalAlignment"
},"StyleIdentifier": {
  "id" : "StyleIdentifier"
},"PivotTableResponse": {
  "properties" : {
    "PivotTable" : {
      "$ref" : "PivotTable"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "PivotTableResponse"
},"Name": {
  "properties" : {
    "Comment" : {
      "type" : "string"
    },
    "WorksheetIndex" : {
      "$ref" : "int"
    },
    "IsReferred" : {
      "type" : "boolean"
    },
    "IsVisible" : {
      "type" : "boolean"
    },
    "R1C1RefersTo" : {
      "type" : "string"
    },
    "RefersTo" : {
      "type" : "string"
    },
    "Text" : {
      "type" : "string"
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Name"
},"HyperlinksResponse": {
  "properties" : {
    "Hyperlinks" : {
      "$ref" : "Hyperlinks"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "HyperlinksResponse"
},"ChartsResponse": {
  "properties" : {
    "Charts" : {
      "$ref" : "Charts"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "ChartsResponse"
},"Validations": {
  "properties" : {
    "Count" : {
      "$ref" : "int"
    },
    "ValidationList" : {
      "type" : "array",
      "items" : {
        "$ref" : "LinkElement"
      }
    },
    "link" : {
      "$ref" : "Link"
    }
  },
  "id" : "Validations"
},"WorkbookResponse": {
  "properties" : {
    "Workbook" : {
      "$ref" : "Workbook"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WorkbookResponse"
},"GradientFill": {
  "properties" : {
    "FillType" : {
      "type" : "string"
    },
    "DirectionType" : {
      "type" : "string"
    },
    "Angle" : {
      "$ref" : "float"
    },
    "GradientStops" : {
      "type" : "array",
      "items" : {
        "$ref" : "GradientFillStop"
      }
    }
  },
  "id" : "GradientFill"
},"RowResponse": {
  "properties" : {
    "Row" : {
      "$ref" : "Row"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "RowResponse"
},"WorkbookReplaceResponse": {
  "properties" : {
    "Matches" : {
      "$ref" : "int"
    },
    "Workbook" : {
      "$ref" : "LinkElement"
    },
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "WorkbookReplaceResponse"
},"SaaSposeResponse": {
  "properties" : {
    "Code" : {
      "type" : "string"
    },
    "Status" : {
      "type" : "string"
    }
  },
  "id" : "SaaSposeResponse"
}
}