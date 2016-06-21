using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Columns {
    public int? MaxColumn { get; set; }

    public int? ColumnsCount { get; set; }

    public List<LinkElement> ColumnsList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Columns {\n");
      sb.Append("  MaxColumn: ").Append(MaxColumn).Append("\n");
      sb.Append("  ColumnsCount: ").Append(ColumnsCount).Append("\n");
      sb.Append("  ColumnsList: ").Append(ColumnsList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
