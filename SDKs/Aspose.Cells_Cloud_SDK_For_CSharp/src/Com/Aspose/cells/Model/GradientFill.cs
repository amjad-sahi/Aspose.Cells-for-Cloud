using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class GradientFill {
    public string FillType { get; set; }

    public string DirectionType { get; set; }

    public float? Angle { get; set; }

    public List<GradientFillStop> GradientStops { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GradientFill {\n");
      sb.Append("  FillType: ").Append(FillType).Append("\n");
      sb.Append("  DirectionType: ").Append(DirectionType).Append("\n");
      sb.Append("  Angle: ").Append(Angle).Append("\n");
      sb.Append("  GradientStops: ").Append(GradientStops).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
