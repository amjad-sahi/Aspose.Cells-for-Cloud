using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class WorksheetMovingRequest {
    public string DestinationWorksheet { get; set; }

    public string Position { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorksheetMovingRequest {\n");
      sb.Append("  DestinationWorksheet: ").Append(DestinationWorksheet).Append("\n");
      sb.Append("  Position: ").Append(Position).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
