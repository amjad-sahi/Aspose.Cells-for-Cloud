using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Worksheet {
    public List<Link> Links { get; set; }

    public bool? DisplayRightToLeft { get; set; }

    public bool? DisplayZeros { get; set; }

    public int? FirstVisibleColumn { get; set; }

    public int? FirstVisibleRow { get; set; }

    public string Name { get; set; }

    public int? Index { get; set; }

    public bool? IsGridlinesVisible { get; set; }

    public bool? IsOutlineShown { get; set; }

    public bool? IsPageBreakPreview { get; set; }

    public bool? IsVisible { get; set; }

    public bool? IsProtected { get; set; }

    public bool? IsRowColumnHeadersVisible { get; set; }

    public bool? IsRulerVisible { get; set; }

    public bool? IsSelected { get; set; }

    public Color TabColor { get; set; }

    public bool? TransitionEntry { get; set; }

    public bool? TransitionEvaluation { get; set; }

    public string Type { get; set; }

    public string ViewType { get; set; }

    public string VisibilityType { get; set; }

    public int? Zoom { get; set; }

    public LinkElement Cells { get; set; }

    public LinkElement Charts { get; set; }

    public LinkElement AutoShapes { get; set; }

    public LinkElement OleObjects { get; set; }

    public LinkElement Comments { get; set; }

    public LinkElement Pictures { get; set; }

    public LinkElement MergedCells { get; set; }

    public LinkElement Validations { get; set; }

    public LinkElement ConditionalFormattings { get; set; }

    public LinkElement Hyperlinks { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Worksheet {\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  DisplayRightToLeft: ").Append(DisplayRightToLeft).Append("\n");
      sb.Append("  DisplayZeros: ").Append(DisplayZeros).Append("\n");
      sb.Append("  FirstVisibleColumn: ").Append(FirstVisibleColumn).Append("\n");
      sb.Append("  FirstVisibleRow: ").Append(FirstVisibleRow).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Index: ").Append(Index).Append("\n");
      sb.Append("  IsGridlinesVisible: ").Append(IsGridlinesVisible).Append("\n");
      sb.Append("  IsOutlineShown: ").Append(IsOutlineShown).Append("\n");
      sb.Append("  IsPageBreakPreview: ").Append(IsPageBreakPreview).Append("\n");
      sb.Append("  IsVisible: ").Append(IsVisible).Append("\n");
      sb.Append("  IsProtected: ").Append(IsProtected).Append("\n");
      sb.Append("  IsRowColumnHeadersVisible: ").Append(IsRowColumnHeadersVisible).Append("\n");
      sb.Append("  IsRulerVisible: ").Append(IsRulerVisible).Append("\n");
      sb.Append("  IsSelected: ").Append(IsSelected).Append("\n");
      sb.Append("  TabColor: ").Append(TabColor).Append("\n");
      sb.Append("  TransitionEntry: ").Append(TransitionEntry).Append("\n");
      sb.Append("  TransitionEvaluation: ").Append(TransitionEvaluation).Append("\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  ViewType: ").Append(ViewType).Append("\n");
      sb.Append("  VisibilityType: ").Append(VisibilityType).Append("\n");
      sb.Append("  Zoom: ").Append(Zoom).Append("\n");
      sb.Append("  Cells: ").Append(Cells).Append("\n");
      sb.Append("  Charts: ").Append(Charts).Append("\n");
      sb.Append("  AutoShapes: ").Append(AutoShapes).Append("\n");
      sb.Append("  OleObjects: ").Append(OleObjects).Append("\n");
      sb.Append("  Comments: ").Append(Comments).Append("\n");
      sb.Append("  Pictures: ").Append(Pictures).Append("\n");
      sb.Append("  MergedCells: ").Append(MergedCells).Append("\n");
      sb.Append("  Validations: ").Append(Validations).Append("\n");
      sb.Append("  ConditionalFormattings: ").Append(ConditionalFormattings).Append("\n");
      sb.Append("  Hyperlinks: ").Append(Hyperlinks).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
