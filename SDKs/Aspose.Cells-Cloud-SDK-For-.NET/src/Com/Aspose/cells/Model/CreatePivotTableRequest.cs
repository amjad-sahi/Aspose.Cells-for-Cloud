using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class CreatePivotTableRequest {
    public string Name { get; set; }

    public string SourceData { get; set; }

    public string DestCellName { get; set; }

    public bool? UseSameSource { get; set; }

    public List<int?> PivotFieldRows { get; set; }

    public List<int?> PivotFieldColumns { get; set; }

    public List<int?> PivotFieldData { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class CreatePivotTableRequest {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  SourceData: ").Append(SourceData).Append("\n");
      sb.Append("  DestCellName: ").Append(DestCellName).Append("\n");
      sb.Append("  UseSameSource: ").Append(UseSameSource).Append("\n");
      sb.Append("  PivotFieldRows: ").Append(PivotFieldRows).Append("\n");
      sb.Append("  PivotFieldColumns: ").Append(PivotFieldColumns).Append("\n");
      sb.Append("  PivotFieldData: ").Append(PivotFieldData).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
