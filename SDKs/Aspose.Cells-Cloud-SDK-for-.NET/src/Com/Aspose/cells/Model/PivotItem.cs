using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PivotItem {
    public int? Index { get; set; }

    public bool? IsHidden { get; set; }

    public string Name { get; set; }

    public object Value { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PivotItem {\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("  IsHidden: ").Append(IsHidden).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
