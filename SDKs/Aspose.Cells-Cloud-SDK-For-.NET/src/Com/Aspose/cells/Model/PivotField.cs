using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PivotField {
    public int? AutoShowCount { get; set; }

    public int? AutoShowField { get; set; }

    public int? AutoSortField { get; set; }

    public int? BaseField { get; set; }

    public int? BaseIndex { get; set; }

    public int? BaseItem { get; set; }

    public string BaseItemPosition { get; set; }

    public int CurrentPageItem { get; set; }

    public string DataDisplayFormat { get; set; }

    public string DisplayName { get; set; }

    public bool? DragToColumn { get; set; }

    public bool? DragToData { get; set; }

    public bool? DragToHide { get; set; }

    public bool? DragToPage { get; set; }

    public bool? DragToRow { get; set; }

    public string Function { get; set; }

    public bool? InsertBlankRow { get; set; }

    public bool? IsAscendShow { get; set; }

    public bool? IsAscendSort { get; set; }

    public bool? IsAutoShow { get; set; }

    public bool? IsAutoSort { get; set; }

    public bool? IsAutoSubtotals { get; set; }

    public bool? IsCalculatedField { get; set; }

    public bool? IsIncludeNewItemsInFilter { get; set; }

    public bool? IsInsertPageBreaksBetweenItems { get; set; }

    public bool? IsMultipleItemSelectionAllowed { get; set; }

    public bool? IsRepeatItemLabels { get; set; }

    public int? ItemCount { get; set; }

    public List<string> Items { get; set; }

    public string Name { get; set; }

    public int? Number { get; set; }

    public string NumberFormat { get; set; }

    public List<string> OriginalItems { get; set; }

    public List<PivotItem> PivotItems { get; set; }

    public int? Position { get; set; }

    public bool? ShowAllItems { get; set; }

    public bool? ShowCompact { get; set; }

    public bool? ShowInOutlineForm { get; set; }

    public bool? ShowSubtotalAtTop { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PivotField {\n");
      sb.Append("  AutoShowCount: ").Append(AutoShowCount).Append("\n");
      sb.Append("  AutoShowField: ").Append(AutoShowField).Append("\n");
      sb.Append("  AutoSortField: ").Append(AutoSortField).Append("\n");
      sb.Append("  BaseField: ").Append(BaseField).Append("\n");
      sb.Append("  BaseIndex: ").Append(BaseIndex).Append("\n");
      sb.Append("  BaseItem: ").Append(BaseItem).Append("\n");
      sb.Append("  BaseItemPosition: ").Append(BaseItemPosition).Append("\n");
      sb.Append("  CurrentPageItem: ").Append(CurrentPageItem).Append("\n");
      sb.Append("  DataDisplayFormat: ").Append(DataDisplayFormat).Append("\n");
      sb.Append("  DisplayName: ").Append(DisplayName).Append("\n");
      sb.Append("  DragToColumn: ").Append(DragToColumn).Append("\n");
      sb.Append("  DragToData: ").Append(DragToData).Append("\n");
      sb.Append("  DragToHide: ").Append(DragToHide).Append("\n");
      sb.Append("  DragToPage: ").Append(DragToPage).Append("\n");
      sb.Append("  DragToRow: ").Append(DragToRow).Append("\n");
      sb.Append("  Function: ").Append(Function).Append("\n");
      sb.Append("  InsertBlankRow: ").Append(InsertBlankRow).Append("\n");
      sb.Append("  IsAscendShow: ").Append(IsAscendShow).Append("\n");
      sb.Append("  IsAscendSort: ").Append(IsAscendSort).Append("\n");
      sb.Append("  IsAutoShow: ").Append(IsAutoShow).Append("\n");
      sb.Append("  IsAutoSort: ").Append(IsAutoSort).Append("\n");
      sb.Append("  IsAutoSubtotals: ").Append(IsAutoSubtotals).Append("\n");
      sb.Append("  IsCalculatedField: ").Append(IsCalculatedField).Append("\n");
      sb.Append("  IsIncludeNewItemsInFilter: ").Append(IsIncludeNewItemsInFilter).Append("\n");
      sb.Append("  IsInsertPageBreaksBetweenItems: ").Append(IsInsertPageBreaksBetweenItems).Append("\n");
      sb.Append("  IsMultipleItemSelectionAllowed: ").Append(IsMultipleItemSelectionAllowed).Append("\n");
      sb.Append("  IsRepeatItemLabels: ").Append(IsRepeatItemLabels).Append("\n");
      sb.Append("  ItemCount: ").Append(ItemCount).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Number: ").Append(Number).Append("\n");
      sb.Append("  NumberFormat: ").Append(NumberFormat).Append("\n");
      sb.Append("  OriginalItems: ").Append(OriginalItems).Append("\n");
      sb.Append("  PivotItems: ").Append(PivotItems).Append("\n");
      sb.Append("  Position: ").Append(Position).Append("\n");
      sb.Append("  ShowAllItems: ").Append(ShowAllItems).Append("\n");
      sb.Append("  ShowCompact: ").Append(ShowCompact).Append("\n");
      sb.Append("  ShowInOutlineForm: ").Append(ShowInOutlineForm).Append("\n");
      sb.Append("  ShowSubtotalAtTop: ").Append(ShowSubtotalAtTop).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
