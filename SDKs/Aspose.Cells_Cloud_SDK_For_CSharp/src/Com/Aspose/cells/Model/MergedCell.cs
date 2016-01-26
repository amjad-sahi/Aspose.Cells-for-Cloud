using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class MergedCell {
    public int? EndColumn { get; set; }

    public int? EndRow { get; set; }

    public int? StartColumn { get; set; }

    public int? StartRow { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MergedCell {\n");
      sb.Append("  EndColumn: ").Append(EndColumn).Append("\n");
      sb.Append("  EndRow: ").Append(EndRow).Append("\n");
      sb.Append("  StartColumn: ").Append(StartColumn).Append("\n");
      sb.Append("  StartRow: ").Append(StartRow).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
