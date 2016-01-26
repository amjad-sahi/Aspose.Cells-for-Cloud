using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class SolidFill {
    public Color Color { get; set; }

    public CellsColor CellsColor { get; set; }

    public double? Transparency { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SolidFill {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  CellsColor: ").Append(CellsColor).Append("\n");
      sb.Append("  Transparency: ").Append(Transparency).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
