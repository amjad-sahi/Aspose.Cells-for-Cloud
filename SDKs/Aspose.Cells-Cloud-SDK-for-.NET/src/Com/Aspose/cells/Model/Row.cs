using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Row {
    public int? GroupLevel { get; set; }

    public double? Height { get; set; }

    public int? Index { get; set; }

    public bool? IsBlank { get; set; }

    public bool? IsHeightMatched { get; set; }

    public bool? IsHidden { get; set; }

    public LinkElement Style { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Row {\n");
      sb.Append("  GroupLevel: ").Append(GroupLevel).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("  IsBlank: ").Append(IsBlank).Append("\n");
      sb.Append("  IsHeightMatched: ").Append(IsHeightMatched).Append("\n");
      sb.Append("  IsHidden: ").Append(IsHidden).Append("\n");
      sb.Append("  Style: ").Append(Style).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
