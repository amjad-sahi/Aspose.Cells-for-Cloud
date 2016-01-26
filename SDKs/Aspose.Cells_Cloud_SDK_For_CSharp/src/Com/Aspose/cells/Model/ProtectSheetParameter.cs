using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class ProtectSheetParameter {
    public string ProtectionType { get; set; }

    public string Password { get; set; }

    public List<string> AllowEditArea { get; set; }

    public string AllowDeletingColumn { get; set; }

    public string AllowDeletingRow { get; set; }

    public string AllowFiltering { get; set; }

    public string AllowFormattingCell { get; set; }

    public string AllowFormattingColumn { get; set; }

    public string AllowFormattingRow { get; set; }

    public string AllowInsertingColumn { get; set; }

    public string AllowInsertingHyperlink { get; set; }

    public string AllowInsertingRow { get; set; }

    public string AllowSelectingLockedCell { get; set; }

    public string AllowSelectingUnlockedCell { get; set; }

    public string AllowSorting { get; set; }

    public string AllowUsingPivotTable { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ProtectSheetParameter {\n");
      sb.Append("  ProtectionType: ").Append(ProtectionType).Append("\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("  AllowEditArea: ").Append(AllowEditArea).Append("\n");
      sb.Append("  AllowDeletingColumn: ").Append(AllowDeletingColumn).Append("\n");
      sb.Append("  AllowDeletingRow: ").Append(AllowDeletingRow).Append("\n");
      sb.Append("  AllowFiltering: ").Append(AllowFiltering).Append("\n");
      sb.Append("  AllowFormattingCell: ").Append(AllowFormattingCell).Append("\n");
      sb.Append("  AllowFormattingColumn: ").Append(AllowFormattingColumn).Append("\n");
      sb.Append("  AllowFormattingRow: ").Append(AllowFormattingRow).Append("\n");
      sb.Append("  AllowInsertingColumn: ").Append(AllowInsertingColumn).Append("\n");
      sb.Append("  AllowInsertingHyperlink: ").Append(AllowInsertingHyperlink).Append("\n");
      sb.Append("  AllowInsertingRow: ").Append(AllowInsertingRow).Append("\n");
      sb.Append("  AllowSelectingLockedCell: ").Append(AllowSelectingLockedCell).Append("\n");
      sb.Append("  AllowSelectingUnlockedCell: ").Append(AllowSelectingUnlockedCell).Append("\n");
      sb.Append("  AllowSorting: ").Append(AllowSorting).Append("\n");
      sb.Append("  AllowUsingPivotTable: ").Append(AllowUsingPivotTable).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
