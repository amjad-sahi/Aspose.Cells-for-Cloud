using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class FillFormat {
    public string Type { get; set; }

    public SolidFill SolidFill { get; set; }

    public PatternFill PatternFill { get; set; }

    public TextureFill TextureFill { get; set; }

    public GradientFill GradientFill { get; set; }

    public string ImageData { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class FillFormat {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  SolidFill: ").Append(SolidFill).Append("\n");
      sb.Append("  PatternFill: ").Append(PatternFill).Append("\n");
      sb.Append("  TextureFill: ").Append(TextureFill).Append("\n");
      sb.Append("  GradientFill: ").Append(GradientFill).Append("\n");
      sb.Append("  ImageData: ").Append(ImageData).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
