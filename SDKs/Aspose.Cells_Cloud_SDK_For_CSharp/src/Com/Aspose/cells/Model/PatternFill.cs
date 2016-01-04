using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PatternFill {
    public string Pattern { get; set; }

    public CellsColor BackgroundCellsColor { get; set; }

    public CellsColor ForegroundCellsColor { get; set; }

    public Color ForegroundColor { get; set; }

    public Color BackgroundColor { get; set; }

    public double? BackTransparency { get; set; }

    public double? ForeTransparency { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PatternFill {\n");
      sb.Append("  Pattern: ").Append(Pattern).Append("\n");
      sb.Append("  BackgroundCellsColor: ").Append(BackgroundCellsColor).Append("\n");
      sb.Append("  ForegroundCellsColor: ").Append(ForegroundCellsColor).Append("\n");
      sb.Append("  ForegroundColor: ").Append(ForegroundColor).Append("\n");
      sb.Append("  BackgroundColor: ").Append(BackgroundColor).Append("\n");
      sb.Append("  BackTransparency: ").Append(BackTransparency).Append("\n");
      sb.Append("  ForeTransparency: ").Append(ForeTransparency).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
