using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Hyperlinks {
    public int? Count { get; set; }

    public List<LinkElement> HyperlinkList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Hyperlinks {\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("  HyperlinkList: ").Append(HyperlinkList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
