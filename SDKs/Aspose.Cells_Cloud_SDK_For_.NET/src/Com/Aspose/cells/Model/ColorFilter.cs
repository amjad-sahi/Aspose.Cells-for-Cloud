using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class ColorFilter {
    public string FilterByFillColor { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ColorFilter {\n");
      sb.Append("  FilterByFillColor: ").Append(FilterByFillColor).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
