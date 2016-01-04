using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class DateTimeGroupItem {
    public string DateTimeGroupingType { get; set; }

    public int? Day { get; set; }

    public int? Hour { get; set; }

    public int? Minute { get; set; }

    public int? Month { get; set; }

    public int? Second { get; set; }

    public int? Year { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class DateTimeGroupItem {\n");
      sb.Append("  DateTimeGroupingType: ").Append(DateTimeGroupingType).Append("\n");
      sb.Append("  Day: ").Append(Day).Append("\n");
      sb.Append("  Hour: ").Append(Hour).Append("\n");
      sb.Append("  Minute: ").Append(Minute).Append("\n");
      sb.Append("  Month: ").Append(Month).Append("\n");
      sb.Append("  Second: ").Append(Second).Append("\n");
      sb.Append("  Year: ").Append(Year).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
