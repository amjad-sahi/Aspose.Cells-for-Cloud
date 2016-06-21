using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class IconFilter {
    public int? IconId { get; set; }

    public string IconSetType { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class IconFilter {\n");
      sb.Append("  IconId: ").Append(IconId).Append("\n");
      sb.Append("  IconSetType: ").Append(IconSetType).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
