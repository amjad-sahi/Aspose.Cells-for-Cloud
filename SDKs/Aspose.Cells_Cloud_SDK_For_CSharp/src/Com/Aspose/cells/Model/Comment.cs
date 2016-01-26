using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Comment {
    public string CellName { get; set; }

    public string Author { get; set; }

    public string HtmlNote { get; set; }

    public string Note { get; set; }

    public bool? AutoSize { get; set; }

    public bool? IsVisible { get; set; }

    public int? Width { get; set; }

    public int? Height { get; set; }

    public string TextHorizontalAlignment { get; set; }

    public string TextOrientationType { get; set; }

    public string TextVerticalAlignment { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Comment {\n");
      sb.Append("  CellName: ").Append(CellName).Append("\n");
      sb.Append("  Author: ").Append(Author).Append("\n");
      sb.Append("  HtmlNote: ").Append(HtmlNote).Append("\n");
      sb.Append("  Note: ").Append(Note).Append("\n");
      sb.Append("  AutoSize: ").Append(AutoSize).Append("\n");
      sb.Append("  IsVisible: ").Append(IsVisible).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  TextHorizontalAlignment: ").Append(TextHorizontalAlignment).Append("\n");
      sb.Append("  TextOrientationType: ").Append(TextOrientationType).Append("\n");
      sb.Append("  TextVerticalAlignment: ").Append(TextVerticalAlignment).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
