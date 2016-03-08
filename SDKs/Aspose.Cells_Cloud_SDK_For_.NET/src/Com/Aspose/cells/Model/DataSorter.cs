using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class DataSorter {
    public string CaseSensitive { get; set; }

    public string HasHeaders { get; set; }

    public List<SortKey> KeyList { get; set; }

    public string SortLeftToRight { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DataSorter {\n");
      sb.Append("  CaseSensitive: ").Append(CaseSensitive).Append("\n");
      sb.Append("  HasHeaders: ").Append(HasHeaders).Append("\n");
      sb.Append("  KeyList: ").Append(KeyList).Append("\n");
      sb.Append("  SortLeftToRight: ").Append(SortLeftToRight).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
