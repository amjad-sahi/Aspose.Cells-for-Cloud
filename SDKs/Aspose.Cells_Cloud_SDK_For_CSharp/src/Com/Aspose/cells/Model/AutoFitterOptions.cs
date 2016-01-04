using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class AutoFitterOptions {
    public bool? AutoFitMergedCells { get; set; }

    public bool? IgnoreHidden { get; set; }

    public bool? OnlyAuto { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AutoFitterOptions {\n");
      sb.Append("  AutoFitMergedCells: ").Append(AutoFitMergedCells).Append("\n");
      sb.Append("  IgnoreHidden: ").Append(IgnoreHidden).Append("\n");
      sb.Append("  OnlyAuto: ").Append(OnlyAuto).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
