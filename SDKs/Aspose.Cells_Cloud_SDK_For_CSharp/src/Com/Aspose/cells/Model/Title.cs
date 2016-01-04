using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Title {
    public bool? IsVisible { get; set; }

    public string LinkedSource { get; set; }

    public int? RotationAngle { get; set; }

    public string Text { get; set; }

    public string TextDirection { get; set; }

    public string TextHorizontalAlignment { get; set; }

    public string TextVerticalAlignment { get; set; }

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
      sb.Append("class Title {\n");
      sb.Append("  IsVisible: ").Append(IsVisible).Append("\n");
      sb.Append("  LinkedSource: ").Append(LinkedSource).Append("\n");
      sb.Append("  RotationAngle: ").Append(RotationAngle).Append("\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  TextDirection: ").Append(TextDirection).Append("\n");
      sb.Append("  TextHorizontalAlignment: ").Append(TextHorizontalAlignment).Append("\n");
      sb.Append("  TextVerticalAlignment: ").Append(TextVerticalAlignment).Append("\n");
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
