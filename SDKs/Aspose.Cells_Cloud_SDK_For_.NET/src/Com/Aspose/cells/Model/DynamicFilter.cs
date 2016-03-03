using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class DynamicFilter {
    public string DynamicFilterType { get; set; }

    public object MaxValue { get; set; }

    public object Value { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DynamicFilter {\n");
      sb.Append("  DynamicFilterType: ").Append(DynamicFilterType).Append("\n");
      sb.Append("  MaxValue: ").Append(MaxValue).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
