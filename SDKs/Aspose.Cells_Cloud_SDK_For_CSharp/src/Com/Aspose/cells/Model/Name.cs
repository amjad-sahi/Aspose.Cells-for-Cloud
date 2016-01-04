using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Name {
    public string Comment { get; set; }

    public int? WorksheetIndex { get; set; }

    public bool? IsReferred { get; set; }

    public bool? IsVisible { get; set; }

    public string R1C1RefersTo { get; set; }

    public string RefersTo { get; set; }

    public string Text { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Name {\n");
      sb.Append("  Comment: ").Append(Comment).Append("\n");
      sb.Append("  WorksheetIndex: ").Append(WorksheetIndex).Append("\n");
      sb.Append("  IsReferred: ").Append(IsReferred).Append("\n");
      sb.Append("  IsVisible: ").Append(IsVisible).Append("\n");
      sb.Append("  R1C1RefersTo: ").Append(R1C1RefersTo).Append("\n");
      sb.Append("  RefersTo: ").Append(RefersTo).Append("\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
