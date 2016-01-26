using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class MergedCells {
    public int? Count { get; set; }

    public List<LinkElement> MergedCellList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MergedCells {\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("  MergedCellList: ").Append(MergedCellList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
