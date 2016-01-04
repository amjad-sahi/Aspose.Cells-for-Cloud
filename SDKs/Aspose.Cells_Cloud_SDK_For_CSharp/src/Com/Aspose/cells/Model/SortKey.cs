using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class SortKey {
    public int? Key { get; set; }

    public string SortOrder { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SortKey {\n");
      sb.Append("  Key: ").Append(Key).Append("\n");
      sb.Append("  SortOrder: ").Append(SortOrder).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
