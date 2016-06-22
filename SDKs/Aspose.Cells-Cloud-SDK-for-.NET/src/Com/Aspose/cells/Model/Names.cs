using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Names {
    public int? Count { get; set; }

    public List<LinkElement> NameList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Names {\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("  NameList: ").Append(NameList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
