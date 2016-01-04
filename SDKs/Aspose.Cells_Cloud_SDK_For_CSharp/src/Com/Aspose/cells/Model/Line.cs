using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Line {
    public string BeginArrowLength { get; set; }

    public string BeginArrowWidth { get; set; }

    public string BeginType { get; set; }

    public string CapType { get; set; }

    public Color Color { get; set; }

    public string CompoundType { get; set; }

    public string DashType { get; set; }

    public string EndArrowLength { get; set; }

    public string EndArrowWidth { get; set; }

    public string EndType { get; set; }

    public GradientFill GradientFill { get; set; }

    public bool? IsAuto { get; set; }

    public bool? IsAutomaticColor { get; set; }

    public bool? IsVisible { get; set; }

    public string JoinType { get; set; }

    public string Style { get; set; }

    public double? Transparency { get; set; }

    public string Weight { get; set; }

    public double? WeightPt { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Line {\n");
      sb.Append("  BeginArrowLength: ").Append(BeginArrowLength).Append("\n");
      sb.Append("  BeginArrowWidth: ").Append(BeginArrowWidth).Append("\n");
      sb.Append("  BeginType: ").Append(BeginType).Append("\n");
      sb.Append("  CapType: ").Append(CapType).Append("\n");
      sb.Append("  Color: ").Append(Color).Append("\n");
      sb.Append("  CompoundType: ").Append(CompoundType).Append("\n");
      sb.Append("  DashType: ").Append(DashType).Append("\n");
      sb.Append("  EndArrowLength: ").Append(EndArrowLength).Append("\n");
      sb.Append("  EndArrowWidth: ").Append(EndArrowWidth).Append("\n");
      sb.Append("  EndType: ").Append(EndType).Append("\n");
      sb.Append("  GradientFill: ").Append(GradientFill).Append("\n");
      sb.Append("  IsAuto: ").Append(IsAuto).Append("\n");
      sb.Append("  IsAutomaticColor: ").Append(IsAutomaticColor).Append("\n");
      sb.Append("  IsVisible: ").Append(IsVisible).Append("\n");
      sb.Append("  JoinType: ").Append(JoinType).Append("\n");
      sb.Append("  Style: ").Append(Style).Append("\n");
      sb.Append("  Transparency: ").Append(Transparency).Append("\n");
      sb.Append("  Weight: ").Append(Weight).Append("\n");
      sb.Append("  WeightPt: ").Append(WeightPt).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
