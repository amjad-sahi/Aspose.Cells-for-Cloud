using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Border {
    public string LineStyle { get; set; }

    public Color Color { get; set; }

    public string BorderType { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Border {\n");
      sb.Append("  LineStyle: ").Append(LineStyle).Append("\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  BorderType: ").Append(BorderType).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
