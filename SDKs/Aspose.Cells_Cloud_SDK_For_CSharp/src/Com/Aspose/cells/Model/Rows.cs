using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Rows {
    public int? MaxRow { get; set; }

    public int? RowsCount { get; set; }

    public List<LinkElement> RowsList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Rows {\n");
      sb.Append("  MaxRow: ").Append(MaxRow).Append("\n");
      sb.Append("  RowsCount: ").Append(RowsCount).Append("\n");
      sb.Append("  RowsList: ").Append(RowsList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
