using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class ImportOption {
    public string DestinationWorksheet { get; set; }

    public bool? IsInsert { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ImportOption {\n");
      sb.Append("  DestinationWorksheet: ").Append(DestinationWorksheet).Append("\n");
      sb.Append("  IsInsert: ").Append(IsInsert).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
