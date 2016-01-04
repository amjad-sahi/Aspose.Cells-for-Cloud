using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PivotTableFieldRequest {
    public List<int?> Data { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PivotTableFieldRequest {\n");
      sb.Append("  Data: ").Append(Data).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
