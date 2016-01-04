using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class ThemeColor {
    public string ColorType { get; set; }

    public double? Tint { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ThemeColor {\n");
      sb.Append("  ColorType: ").Append(ColorType).Append("\n");
      sb.Append("  Tint: ").Append(Tint).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
