using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class WorkbookReplaceResponse {
    public int? Matches { get; set; }

    public LinkElement Workbook { get; set; }

    public string Code { get; set; }

    public string Status { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorkbookReplaceResponse {\n");
      sb.Append("  Matches: ").Append(Matches).Append("\n");
      sb.Append("  Workbook: ").Append(Workbook).Append("\n");
      sb.Append("  Code: ").Append(Code).Append("\n");
      sb.Append("  Status: ").Append(Status).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
