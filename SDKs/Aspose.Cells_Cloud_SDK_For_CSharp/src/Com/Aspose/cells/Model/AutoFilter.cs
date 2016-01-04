using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class AutoFilter {
    public List<FilterColumn> FilterColumns { get; set; }

    public string Range { get; set; }

    public DataSorter Sorter { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class AutoFilter {\n");
      sb.Append("  FilterColumns: ").Append(FilterColumns).Append("\n");
      sb.Append("  Range: ").Append(Range).Append("\n");
      sb.Append("  Sorter: ").Append(Sorter).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
