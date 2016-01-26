using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Top10Filter {
    public string Criteria { get; set; }

    public string IsPercent { get; set; }

    public string IsTop { get; set; }

    public int? Items { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Top10Filter {\n");
      sb.Append("  Criteria: ").Append(Criteria).Append("\n");
      sb.Append("  IsPercent: ").Append(IsPercent).Append("\n");
      sb.Append("  IsTop: ").Append(IsTop).Append("\n");
      sb.Append("  Items: ").Append(Items).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
