using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class SingleValue {
    public int ValueType { get; set; }

    public string Value { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SingleValue {\n");
      sb.Append("  ValueType: ").Append(ValueType).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
