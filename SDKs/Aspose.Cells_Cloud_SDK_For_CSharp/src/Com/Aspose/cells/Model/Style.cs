using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Style {
    public Font Font { get; set; }

    public string Name { get; set; }

    public string CultureCustom { get; set; }

    public string Custom { get; set; }

    public Color BackgroundColor { get; set; }

    public Color ForegroundColor { get; set; }

    public bool? IsFormulaHidden { get; set; }

    public bool? IsDateTime { get; set; }

    public bool? IsTextWrapped { get; set; }

    public bool? IsGradient { get; set; }

    public bool? IsLocked { get; set; }

    public bool? IsPercent { get; set; }

    public bool? ShrinkToFit { get; set; }

    public int? IndentLevel { get; set; }

    public int? Number { get; set; }

    public int? RotationAngle { get; set; }

    public string Pattern { get; set; }

    public string TextDirection { get; set; }

    public string VerticalAlignment { get; set; }

    public string HorizontalAlignment { get; set; }

    public List<Border> BorderCollection { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Style {\n");
      sb.Append("  Font: ").Append(Font).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  CultureCustom: ").Append(CultureCustom).Append("\n");
      sb.Append("  Custom: ").Append(Custom).Append("\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  ForegroundColor: ").Append(ForegroundColor).Append("\n");
      sb.Append("  IsFormulaHidden: ").Append(IsFormulaHidden).Append("\n");
      sb.Append("  IsDateTime: ").Append(IsDateTime).Append("\n");
      sb.Append("  IsTextWrapped: ").Append(IsTextWrapped).Append("\n");
      sb.Append("  IsGradient: ").Append(IsGradient).Append("\n");
      sb.Append("  IsLocked: ").Append(IsLocked).Append("\n");
      sb.Append("  IsPercent: ").Append(IsPercent).Append("\n");
      sb.Append("  ShrinkToFit: ").Append(ShrinkToFit).Append("\n");
      sb.Append("  IndentLevel: ").Append(IndentLevel).Append("\n");
      sb.Append("  Number: ").Append(Number).Append("\n");
      sb.Append("  RotationAngle: ").Append(RotationAngle).Append("\n");
      sb.Append("  Pattern: ").Append(Pattern).Append("\n");
      sb.Append("  TextDirection: ").Append(TextDirection).Append("\n");
      sb.Append("  VerticalAlignment: ").Append(VerticalAlignment).Append("\n");
      sb.Append("  HorizontalAlignment: ").Append(HorizontalAlignment).Append("\n");
      sb.Append("  BorderCollection: ").Append(BorderCollection).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
