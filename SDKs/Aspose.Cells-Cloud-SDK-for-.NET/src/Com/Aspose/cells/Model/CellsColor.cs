using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class CellsColor {
    public Color Color { get; set; }

    public int? ColorIndex { get; set; }

    public bool? IsShapeColor { get; set; }

    public ThemeColor ThemeColor { get; set; }

    public string Type { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CellsColor {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  ColorIndex: ").Append(ColorIndex).Append("\n");
      sb.Append("  IsShapeColor: ").Append(IsShapeColor).Append("\n");
      sb.Append("  ThemeColor: ").Append(ThemeColor).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
