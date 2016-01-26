using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Font {
    public Color Color { get; set; }

    public double? DoubleSize { get; set; }

    public bool? IsBold { get; set; }

    public bool? IsItalic { get; set; }

    public bool? IsStrikeout { get; set; }

    public bool? IsSubscript { get; set; }

    public bool? IsSuperscript { get; set; }

    public string Name { get; set; }

    public int? Size { get; set; }

    public string Underline { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Font {\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  DoubleSize: ").Append(DoubleSize).Append("\n");
      sb.Append("  IsBold: ").Append(IsBold).Append("\n");
      sb.Append("  IsItalic: ").Append(IsItalic).Append("\n");
      sb.Append("  IsStrikeout: ").Append(IsStrikeout).Append("\n");
      sb.Append("  IsSubscript: ").Append(IsSubscript).Append("\n");
      sb.Append("  IsSuperscript: ").Append(IsSuperscript).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Size: ").Append(Size).Append("\n");
      sb.Append("  Underline: ").Append(Underline).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
