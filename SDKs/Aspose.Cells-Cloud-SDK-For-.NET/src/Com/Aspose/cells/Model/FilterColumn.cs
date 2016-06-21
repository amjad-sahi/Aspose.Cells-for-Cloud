using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class FilterColumn {
    public int? FieldIndex { get; set; }

    public string FilterType { get; set; }

    public MultipleFilters MultipleFilters { get; set; }

    public ColorFilter ColorFilter { get; set; }

    public List<CustomFilter> CustomFilters { get; set; }

    public DynamicFilter DynamicFilter { get; set; }

    public IconFilter IconFilter { get; set; }

    public Top10Filter Top10Filter { get; set; }

    public string Visibledropdown { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class FilterColumn {\n");
      sb.Append("  FieldIndex: ").Append(FieldIndex).Append("\n");
      sb.Append("  FilterType: ").Append(FilterType).Append("\n");
      sb.Append("  MultipleFilters: ").Append(MultipleFilters).Append("\n");
      sb.Append("  ColorFilter: ").Append(ColorFilter).Append("\n");
      sb.Append("  CustomFilters: ").Append(CustomFilters).Append("\n");
      sb.Append("  DynamicFilter: ").Append(DynamicFilter).Append("\n");
      sb.Append("  IconFilter: ").Append(IconFilter).Append("\n");
      sb.Append("  Top10Filter: ").Append(Top10Filter).Append("\n");
      sb.Append("  Visibledropdown: ").Append(Visibledropdown).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
