using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class SaveResult {
    public Link SourceDocument { get; set; }

    public Link DestDocument { get; set; }

    public List<Link> AdditionalItems { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SaveResult {\n");
      sb.Append("  SourceDocument: ").Append(SourceDocument).Append("\n");
      sb.Append("  DestDocument: ").Append(DestDocument).Append("\n");
      sb.Append("  AdditionalItems: ").Append(AdditionalItems).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
