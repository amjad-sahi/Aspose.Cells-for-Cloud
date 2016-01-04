using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Validation {
    public string AlertStyle { get; set; }

    public List<CellArea> AreaList { get; set; }

    public string ErrorMessage { get; set; }

    public string ErrorTitle { get; set; }

    public string Formula1 { get; set; }

    public string Formula2 { get; set; }

    public bool? IgnoreBlank { get; set; }

    public bool? InCellDropDown { get; set; }

    public string InputMessage { get; set; }

    public string InputTitle { get; set; }

    public string Operator { get; set; }

    public bool? ShowError { get; set; }

    public bool? ShowInput { get; set; }

    public string Type { get; set; }

    public string Value1 { get; set; }

    public string Value2 { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Validation {\n");
      sb.Append("  AlertStyle: ").Append(AlertStyle).Append("\n");
      sb.Append("  AreaList: ").Append(AreaList).Append("\n");
      sb.Append("  ErrorMessage: ").Append(ErrorMessage).Append("\n");
      sb.Append("  ErrorTitle: ").Append(ErrorTitle).Append("\n");
      sb.Append("  Formula1: ").Append(Formula1).Append("\n");
      sb.Append("  Formula2: ").Append(Formula2).Append("\n");
      sb.Append("  IgnoreBlank: ").Append(IgnoreBlank).Append("\n");
      sb.Append("  InCellDropDown: ").Append(InCellDropDown).Append("\n");
      sb.Append("  InputMessage: ").Append(InputMessage).Append("\n");
      sb.Append("  InputTitle: ").Append(InputTitle).Append("\n");
      sb.Append("  Operator: ").Append(Operator).Append("\n");
      sb.Append("  ShowError: ").Append(ShowError).Append("\n");
      sb.Append("  ShowInput: ").Append(ShowInput).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Value1: ").Append(Value1).Append("\n");
      sb.Append("  Value2: ").Append(Value2).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
