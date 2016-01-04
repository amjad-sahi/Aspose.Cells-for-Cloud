using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class WorksheetReplaceResponse {
    public int? Matches { get; set; }

    public LinkElement Worksheet { get; set; }

    public string Code { get; set; }

    public string Status { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorksheetReplaceResponse {\n");
      sb.Append("  Matches: ").Append(Matches).Append("\n");
      sb.Append("  Worksheet: ").Append(Worksheet).Append("\n");
      sb.Append("  Code: ").Append(Code).Append("\n");
      sb.Append("  Status: ").Append(Status).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
