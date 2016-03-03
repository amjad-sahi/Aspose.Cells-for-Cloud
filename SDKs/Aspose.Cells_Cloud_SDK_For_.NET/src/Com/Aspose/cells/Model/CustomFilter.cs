using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class CustomFilter {
    public object Criteria { get; set; }

    public string FilterOperatorType { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CustomFilter {\n");
      sb.Append("  Criteria: ").Append(Criteria).Append("\n");
      sb.Append("  FilterOperatorType: ").Append(FilterOperatorType).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
