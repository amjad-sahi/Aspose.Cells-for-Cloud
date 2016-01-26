using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Cell {
    public string Name { get; set; }

    public int? Row { get; set; }

    public int? Column { get; set; }

    public string Value { get; set; }

    public string Type { get; set; }

    public string Formula { get; set; }

    public bool? IsFormula { get; set; }

    public bool? IsMerged { get; set; }

    public bool? IsArrayHeader { get; set; }

    public bool? IsInArray { get; set; }

    public bool? IsErrorValue { get; set; }

    public bool? IsInTable { get; set; }

    public bool? IsStyleSet { get; set; }

    public string HtmlString { get; set; }

    public LinkElement Style { get; set; }

    public string Worksheet { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Cell {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Row: ").Append(Row).Append("\n");
      sb.Append("  Column: ").Append(Column).Append("\n");
      sb.Append("  Value: ").Append(Value).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Formula: ").Append(Formula).Append("\n");
      sb.Append("  IsFormula: ").Append(IsFormula).Append("\n");
      sb.Append("  IsMerged: ").Append(IsMerged).Append("\n");
      sb.Append("  IsArrayHeader: ").Append(IsArrayHeader).Append("\n");
      sb.Append("  IsInArray: ").Append(IsInArray).Append("\n");
      sb.Append("  IsErrorValue: ").Append(IsErrorValue).Append("\n");
      sb.Append("  IsInTable: ").Append(IsInTable).Append("\n");
      sb.Append("  IsStyleSet: ").Append(IsStyleSet).Append("\n");
      sb.Append("  HtmlString: ").Append(HtmlString).Append("\n");
      sb.Append("  Style: ").Append(Style).Append("\n");
      sb.Append("  Worksheet: ").Append(Worksheet).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
