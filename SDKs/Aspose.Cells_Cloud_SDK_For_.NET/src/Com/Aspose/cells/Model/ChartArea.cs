using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class ChartArea {
    public Area Area { get; set; }

    public bool? AutoScaleFont { get; set; }

    public string BackgroundMode { get; set; }

    public Line Border { get; set; }

    public Font Font { get; set; }

    public bool? IsAutomaticSize { get; set; }

    public bool? IsInnerMode { get; set; }

    public bool? Shadow { get; set; }

    public List<LinkElement> ShapeProperties { get; set; }

    public int? Width { get; set; }

    public int? Height { get; set; }

    public int? X { get; set; }

    public int? Y { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ChartArea {\n");
      sb.Append("  Area: ").Append(Area).Append("\n");
      sb.Append("  AutoScaleFont: ").Append(AutoScaleFont).Append("\n");
      sb.Append("  BackgroundMode: ").Append(BackgroundMode).Append("\n");
      sb.Append("  Border: ").Append(Border).Append("\n");
      sb.Append("  Font: ").Append(Font).Append("\n");
      sb.Append("  IsAutomaticSize: ").Append(IsAutomaticSize).Append("\n");
      sb.Append("  IsInnerMode: ").Append(IsInnerMode).Append("\n");
      sb.Append("  Shadow: ").Append(Shadow).Append("\n");
      sb.Append("  ShapeProperties: ").Append(ShapeProperties).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  X: ").Append(X).Append("\n");
      sb.Append("  Y: ").Append(Y).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
