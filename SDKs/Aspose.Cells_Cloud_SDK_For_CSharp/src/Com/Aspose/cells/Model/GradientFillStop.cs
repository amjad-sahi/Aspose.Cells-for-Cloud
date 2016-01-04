using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class GradientFillStop {
    public Color Color { get; set; }

    public double? Position { get; set; }

    public double? Transparency { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GradientFillStop {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  Position: ").Append(Position).Append("\n");
      sb.Append("  Transparency: ").Append(Transparency).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
