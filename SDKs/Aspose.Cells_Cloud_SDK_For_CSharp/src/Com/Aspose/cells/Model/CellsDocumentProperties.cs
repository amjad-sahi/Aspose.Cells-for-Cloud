using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class CellsDocumentProperties {
    public List<CellsDocumentProperty> DocumentPropertyList { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CellsDocumentProperties {\n");
      sb.Append("  DocumentPropertyList: ").Append(DocumentPropertyList).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
