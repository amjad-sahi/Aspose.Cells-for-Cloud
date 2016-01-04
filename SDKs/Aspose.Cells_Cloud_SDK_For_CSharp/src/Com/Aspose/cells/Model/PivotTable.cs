using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PivotTable {
    public string AltTextDescription { get; set; }

    public string AltTextTitle { get; set; }

    public string AutoFormatType { get; set; }

    public List<PivotField> BaseFields { get; set; }

    public List<PivotField> ColumnFields { get; set; }

    public bool? ColumnGrand { get; set; }

    public string ColumnHeaderCaption { get; set; }

    public CellArea ColumnRange { get; set; }

    public bool? CustomListSort { get; set; }

    public CellArea DataBodyRange { get; set; }

    public PivotField DataField { get; set; }

    public List<PivotField> DataFields { get; set; }

    public List<string> DataSource { get; set; }

    public bool? DisplayErrorString { get; set; }

    public bool? DisplayImmediateItems { get; set; }

    public bool? DisplayNullString { get; set; }

    public bool? EnableDataValueEditing { get; set; }

    public bool? EnableDrilldown { get; set; }

    public bool? EnableFieldDialog { get; set; }

    public bool? EnableFieldList { get; set; }

    public bool? EnableWizard { get; set; }

    public string ErrorString { get; set; }

    public bool? FieldListSortAscending { get; set; }

    public string GrandTotalName { get; set; }

    public bool? HasBlankRows { get; set; }

    public int? Indent { get; set; }

    public bool? IsAutoFormat { get; set; }

    public bool? IsGridDropZones { get; set; }

    public bool? IsMultipleFieldFilters { get; set; }

    public bool? IsSelected { get; set; }

    public bool? ItemPrintTitles { get; set; }

    public bool? ManualUpdate { get; set; }

    public bool? MergeLabels { get; set; }

    public string MissingItemsLimit { get; set; }

    public string Name { get; set; }

    public string NullString { get; set; }

    public string PageFieldOrder { get; set; }

    public List<PivotField> PageFields { get; set; }

    public int? PageFieldWrapCount { get; set; }

    public List<PivotFilter> PivotFilters { get; set; }

    public string PivotTableStyleName { get; set; }

    public string PivotTableStyleType { get; set; }

    public bool? PreserveFormatting { get; set; }

    public bool? PrintDrill { get; set; }

    public bool? PrintTitles { get; set; }

    public bool? RefreshDataFlag { get; set; }

    public bool? RefreshDataOnOpeningFile { get; set; }

    public List<PivotField> RowFields { get; set; }

    public bool? RowGrand { get; set; }

    public string RowHeaderCaption { get; set; }

    public CellArea RowRange { get; set; }

    public bool? SaveData { get; set; }

    public bool? ShowDataTips { get; set; }

    public bool? ShowDrill { get; set; }

    public bool? ShowEmptyCol { get; set; }

    public bool? ShowEmptyRow { get; set; }

    public bool? ShowMemberPropertyTips { get; set; }

    public bool? ShowPivotStyleColumnHeader { get; set; }

    public bool? ShowPivotStyleColumnStripes { get; set; }

    public bool? ShowPivotStyleLastColumn { get; set; }

    public bool? ShowPivotStyleRowHeader { get; set; }

    public bool? ShowPivotStyleRowStripes { get; set; }

    public bool? ShowRowHeaderCaption { get; set; }

    public bool? ShowValuesRow { get; set; }

    public bool? SubtotalHiddenPageItems { get; set; }

    public CellArea TableRange1 { get; set; }

    public CellArea TableRange2 { get; set; }

    public string Tag { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PivotTable {\n");
      sb.Append("  AltTextDescription: ").Append(AltTextDescription).Append("\n");
      sb.Append("  AltTextTitle: ").Append(AltTextTitle).Append("\n");
      sb.Append("  AutoFormatType: ").Append(AutoFormatType).Append("\n");
      sb.Append("  BaseFields: ").Append(BaseFields).Append("\n");
      sb.Append("  ColumnFields: ").Append(ColumnFields).Append("\n");
      sb.Append("  ColumnGrand: ").Append(ColumnGrand).Append("\n");
      sb.Append("  ColumnHeaderCaption: ").Append(ColumnHeaderCaption).Append("\n");
      sb.Append("  ColumnRange: ").Append(ColumnRange).Append("\n");
      sb.Append("  CustomListSort: ").Append(CustomListSort).Append("\n");
      sb.Append("  DataBodyRange: ").Append(DataBodyRange).Append("\n");
      sb.Append("  DataField: ").Append(DataField).Append("\n");
      sb.Append("  DataFields: ").Append(DataFields).Append("\n");
      sb.Append("  DataSource: ").Append(DataSource).Append("\n");
      sb.Append("  DisplayErrorString: ").Append(DisplayErrorString).Append("\n");
      sb.Append("  DisplayImmediateItems: ").Append(DisplayImmediateItems).Append("\n");
      sb.Append("  DisplayNullString: ").Append(DisplayNullString).Append("\n");
      sb.Append("  EnableDataValueEditing: ").Append(EnableDataValueEditing).Append("\n");
      sb.Append("  EnableDrilldown: ").Append(EnableDrilldown).Append("\n");
      sb.Append("  EnableFieldDialog: ").Append(EnableFieldDialog).Append("\n");
      sb.Append("  EnableFieldList: ").Append(EnableFieldList).Append("\n");
      sb.Append("  EnableWizard: ").Append(EnableWizard).Append("\n");
      sb.Append("  ErrorString: ").Append(ErrorString).Append("\n");
      sb.Append("  FieldListSortAscending: ").Append(FieldListSortAscending).Append("\n");
      sb.Append("  GrandTotalName: ").Append(GrandTotalName).Append("\n");
      sb.Append("  HasBlankRows: ").Append(HasBlankRows).Append("\n");
      sb.Append("  Indent: ").Append(Indent).Append("\n");
      sb.Append("  IsAutoFormat: ").Append(IsAutoFormat).Append("\n");
      sb.Append("  IsGridDropZones: ").Append(IsGridDropZones).Append("\n");
      sb.Append("  IsMultipleFieldFilters: ").Append(IsMultipleFieldFilters).Append("\n");
      sb.Append("  IsSelected: ").Append(IsSelected).Append("\n");
      sb.Append("  ItemPrintTitles: ").Append(ItemPrintTitles).Append("\n");
      sb.Append("  ManualUpdate: ").Append(ManualUpdate).Append("\n");
      sb.Append("  MergeLabels: ").Append(MergeLabels).Append("\n");
      sb.Append("  MissingItemsLimit: ").Append(MissingItemsLimit).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  NullString: ").Append(NullString).Append("\n");
      sb.Append("  PageFieldOrder: ").Append(PageFieldOrder).Append("\n");
      sb.Append("  PageFields: ").Append(PageFields).Append("\n");
      sb.Append("  PageFieldWrapCount: ").Append(PageFieldWrapCount).Append("\n");
      sb.Append("  PivotFilters: ").Append(PivotFilters).Append("\n");
      sb.Append("  PivotTableStyleName: ").Append(PivotTableStyleName).Append("\n");
      sb.Append("  PivotTableStyleType: ").Append(PivotTableStyleType).Append("\n");
      sb.Append("  PreserveFormatting: ").Append(PreserveFormatting).Append("\n");
      sb.Append("  PrintDrill: ").Append(PrintDrill).Append("\n");
      sb.Append("  PrintTitles: ").Append(PrintTitles).Append("\n");
      sb.Append("  RefreshDataFlag: ").Append(RefreshDataFlag).Append("\n");
      sb.Append("  RefreshDataOnOpeningFile: ").Append(RefreshDataOnOpeningFile).Append("\n");
      sb.Append("  RowFields: ").Append(RowFields).Append("\n");
      sb.Append("  RowGrand: ").Append(RowGrand).Append("\n");
      sb.Append("  RowHeaderCaption: ").Append(RowHeaderCaption).Append("\n");
      sb.Append("  RowRange: ").Append(RowRange).Append("\n");
      sb.Append("  SaveData: ").Append(SaveData).Append("\n");
      sb.Append("  ShowDataTips: ").Append(ShowDataTips).Append("\n");
      sb.Append("  ShowDrill: ").Append(ShowDrill).Append("\n");
      sb.Append("  ShowEmptyCol: ").Append(ShowEmptyCol).Append("\n");
      sb.Append("  ShowEmptyRow: ").Append(ShowEmptyRow).Append("\n");
      sb.Append("  ShowMemberPropertyTips: ").Append(ShowMemberPropertyTips).Append("\n");
      sb.Append("  ShowPivotStyleColumnHeader: ").Append(ShowPivotStyleColumnHeader).Append("\n");
      sb.Append("  ShowPivotStyleColumnStripes: ").Append(ShowPivotStyleColumnStripes).Append("\n");
      sb.Append("  ShowPivotStyleLastColumn: ").Append(ShowPivotStyleLastColumn).Append("\n");
      sb.Append("  ShowPivotStyleRowHeader: ").Append(ShowPivotStyleRowHeader).Append("\n");
      sb.Append("  ShowPivotStyleRowStripes: ").Append(ShowPivotStyleRowStripes).Append("\n");
      sb.Append("  ShowRowHeaderCaption: ").Append(ShowRowHeaderCaption).Append("\n");
      sb.Append("  ShowValuesRow: ").Append(ShowValuesRow).Append("\n");
      sb.Append("  SubtotalHiddenPageItems: ").Append(SubtotalHiddenPageItems).Append("\n");
      sb.Append("  TableRange1: ").Append(TableRange1).Append("\n");
      sb.Append("  TableRange2: ").Append(TableRange2).Append("\n");
      sb.Append("  Tag: ").Append(Tag).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
