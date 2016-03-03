using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Hyperlink {
    public string Address { get; set; }

    public CellArea Area { get; set; }

    public string ScreenTip { get; set; }

    public string TextToDisplay { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Hyperlink {\n");
      sb.Append("  Address: ").Append(Address).Append("\n");
      sb.Append("  Area: ").Append(Area).Append("\n");
      sb.Append("  ScreenTip: ").Append(ScreenTip).Append("\n");
      sb.Append("  TextToDisplay: ").Append(TextToDisplay).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
