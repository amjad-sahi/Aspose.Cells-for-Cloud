using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PicFormatOption {
    public string Type { get; set; }

    public double? Scale { get; set; }

    public double? Left { get; set; }

    public double? Right { get; set; }

    public double? Top { get; set; }

    public double? Bottom { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PicFormatOption {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Scale: ").Append(Scale).Append("\n");
      sb.Append("  Left: ").Append(Left).Append("\n");
      sb.Append("  Right: ").Append(Right).Append("\n");
      sb.Append("  Top: ").Append(Top).Append("\n");
      sb.Append("  Bottom: ").Append(Bottom).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
