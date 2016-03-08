using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class CellArea {
    public int? EndColumn { get; set; }

    public int? EndRow { get; set; }

    public int? StartColumn { get; set; }

    public int? StartRow { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CellArea {\n");
      sb.Append("  EndColumn: ").Append(EndColumn).Append("\n");
      sb.Append("  EndRow: ").Append(EndRow).Append("\n");
      sb.Append("  StartColumn: ").Append(StartColumn).Append("\n");
      sb.Append("  StartRow: ").Append(StartRow).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
