using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Area {
    public Color BackgroundColor { get; set; }

    public FillFormat FillFormat { get; set; }

    public Color ForegroundColor { get; set; }

    public string Formatting { get; set; }

    public bool? InvertIfNegative { get; set; }

    public double? Transparency { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Area {\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  FillFormat: ").Append(FillFormat).Append("\n");
      sb.Append("  ForegroundColor: ").Append(ForegroundColor).Append("\n");
      sb.Append("  Formatting: ").Append(Formatting).Append("\n");
      sb.Append("  InvertIfNegative: ").Append(InvertIfNegative).Append("\n");
      sb.Append("  Transparency: ").Append(Transparency).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
