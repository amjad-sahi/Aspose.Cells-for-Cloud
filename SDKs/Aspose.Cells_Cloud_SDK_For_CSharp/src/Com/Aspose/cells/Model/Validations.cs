using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Validations {
    public int? Count { get; set; }

    public List<LinkElement> ValidationList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Validations {\n");
      sb.Append("  Count: ").Append(Count).Append("\n");
      sb.Append("  ValidationList: ").Append(ValidationList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
