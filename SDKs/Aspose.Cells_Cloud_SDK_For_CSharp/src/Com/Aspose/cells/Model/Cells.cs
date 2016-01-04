using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Cells {
    public int? MaxRow { get; set; }

    public int? MaxColumn { get; set; }

    public int? CellCount { get; set; }

    public LinkElement Rows { get; set; }

    public LinkElement Columns { get; set; }

    public List<LinkElement> CellList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Cells {\n");
      sb.Append("  MaxRow: ").Append(MaxRow).Append("\n");
      sb.Append("  MaxColumn: ").Append(MaxColumn).Append("\n");
      sb.Append("  CellCount: ").Append(CellCount).Append("\n");
      sb.Append("  Rows: ").Append(Rows).Append("\n");
      sb.Append("  Columns: ").Append(Columns).Append("\n");
      sb.Append("  CellList: ").Append(CellList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
