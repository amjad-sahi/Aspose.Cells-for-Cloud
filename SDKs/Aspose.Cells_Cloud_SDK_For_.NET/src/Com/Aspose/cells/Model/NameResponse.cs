using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class NameResponse {
    public Name Name { get; set; }

    public string Code { get; set; }

    public string Status { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class NameResponse {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Code: ").Append(Code).Append("\n");
      sb.Append("  Status: ").Append(Status).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
