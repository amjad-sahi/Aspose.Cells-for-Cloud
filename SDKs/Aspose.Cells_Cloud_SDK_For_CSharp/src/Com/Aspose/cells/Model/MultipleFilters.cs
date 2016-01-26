using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class MultipleFilters {
    public string MatchBlank { get; set; }

    public List<DateTimeGroupItem> MultipleFilterList { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class MultipleFilters {\n");
      sb.Append("  MatchBlank: ").Append(MatchBlank).Append("\n");
      sb.Append("  MultipleFilterList: ").Append(MultipleFilterList).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
