using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PivotFilter {
    public AutoFilter AutoFilter { get; set; }

    public int? EvaluationOrder { get; set; }

    public int? FieldIndex { get; set; }

    public string FilterType { get; set; }

    public int? MeasureFldIndex { get; set; }

    public int? MemberPropertyFieldIndex { get; set; }

    public string Name { get; set; }

    public string Value1 { get; set; }

    public string Value2 { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PivotFilter {\n");
      sb.Append("  AutoFilter: ").Append(AutoFilter).Append("\n");
      sb.Append("  EvaluationOrder: ").Append(EvaluationOrder).Append("\n");
      sb.Append("  FieldIndex: ").Append(FieldIndex).Append("\n");
      sb.Append("  FilterType: ").Append(FilterType).Append("\n");
      sb.Append("  MeasureFldIndex: ").Append(MeasureFldIndex).Append("\n");
      sb.Append("  MemberPropertyFieldIndex: ").Append(MemberPropertyFieldIndex).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Value1: ").Append(Value1).Append("\n");
      sb.Append("  Value2: ").Append(Value2).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
