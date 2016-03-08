using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class WorkbookSettings {
    public bool? AutoCompressPictures { get; set; }

    public bool? AutoRecover { get; set; }

    public string BuildVersion { get; set; }

    public string CalcMode { get; set; }

    public int? CalcStackSize { get; set; }

    public string CalculationId { get; set; }

    public bool? CheckComptiliblity { get; set; }

    public bool? CheckExcelRestriction { get; set; }

    public bool? CrashSave { get; set; }

    public bool? CreateCalcChain { get; set; }

    public bool? DataExtractLoad { get; set; }

    public bool? Date1904 { get; set; }

    public string DisplayDrawingObjects { get; set; }

    public bool? EnableMacros { get; set; }

    public int? FirstVisibleTab { get; set; }

    public bool? HidePivotFieldList { get; set; }

    public bool? IsDefaultEncrypted { get; set; }

    public bool? IsHidden { get; set; }

    public bool? IsHScrollBarVisible { get; set; }

    public bool? IsMinimized { get; set; }

    public bool? IsVScrollBarVisible { get; set; }

    public bool? Iteration { get; set; }

    public string LanguageCode { get; set; }

    public double? MaxChange { get; set; }

    public int? MaxIteration { get; set; }

    public string MemorySetting { get; set; }

    public char NumberDecimalSeparator { get; set; }

    public char NumberGroupSeparator { get; set; }

    public bool? ParsingFormulaOnOpen { get; set; }

    public bool? PrecisionAsDisplayed { get; set; }

    public bool? RecalculateBeforeSave { get; set; }

    public bool? ReCalculateOnOpen { get; set; }

    public bool? RecommendReadOnly { get; set; }

    public string Region { get; set; }

    public bool? RemovePersonalInformation { get; set; }

    public bool? RepairLoad { get; set; }

    public bool? Shared { get; set; }

    public int? SheetTabBarWidth { get; set; }

    public bool? ShowTabs { get; set; }

    public bool? UpdateAdjacentCellsBorder { get; set; }

    public string UpdateLinksType { get; set; }

    public double? WindowHeight { get; set; }

    public double? WindowLeft { get; set; }

    public double? WindowTop { get; set; }

    public double? WindowWidth { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorkbookSettings {\n");
      sb.Append("  AutoCompressPictures: ").Append(AutoCompressPictures).Append("\n");
      sb.Append("  AutoRecover: ").Append(AutoRecover).Append("\n");
      sb.Append("  BuildVersion: ").Append(BuildVersion).Append("\n");
      sb.Append("  CalcMode: ").Append(CalcMode).Append("\n");
      sb.Append("  CalcStackSize: ").Append(CalcStackSize).Append("\n");
      sb.Append("  CalculationId: ").Append(CalculationId).Append("\n");
      sb.Append("  CheckComptiliblity: ").Append(CheckComptiliblity).Append("\n");
      sb.Append("  CheckExcelRestriction: ").Append(CheckExcelRestriction).Append("\n");
      sb.Append("  CrashSave: ").Append(CrashSave).Append("\n");
      sb.Append("  CreateCalcChain: ").Append(CreateCalcChain).Append("\n");
      sb.Append("  DataExtractLoad: ").Append(DataExtractLoad).Append("\n");
      sb.Append("  Date1904: ").Append(Date1904).Append("\n");
      sb.Append("  DisplayDrawingObjects: ").Append(DisplayDrawingObjects).Append("\n");
      sb.Append("  EnableMacros: ").Append(EnableMacros).Append("\n");
      sb.Append("  FirstVisibleTab: ").Append(FirstVisibleTab).Append("\n");
      sb.Append("  HidePivotFieldList: ").Append(HidePivotFieldList).Append("\n");
      sb.Append("  IsDefaultEncrypted: ").Append(IsDefaultEncrypted).Append("\n");
      sb.Append("  IsHidden: ").Append(IsHidden).Append("\n");
      sb.Append("  IsHScrollBarVisible: ").Append(IsHScrollBarVisible).Append("\n");
      sb.Append("  IsMinimized: ").Append(IsMinimized).Append("\n");
      sb.Append("  IsVScrollBarVisible: ").Append(IsVScrollBarVisible).Append("\n");
      sb.Append("  Iteration: ").Append(Iteration).Append("\n");
      sb.Append("  LanguageCode: ").Append(LanguageCode).Append("\n");
      sb.Append("  MaxChange: ").Append(MaxChange).Append("\n");
      sb.Append("  MaxIteration: ").Append(MaxIteration).Append("\n");
      sb.Append("  MemorySetting: ").Append(MemorySetting).Append("\n");
      sb.Append("  NumberDecimalSeparator: ").Append(NumberDecimalSeparator).Append("\n");
      sb.Append("  NumberGroupSeparator: ").Append(NumberGroupSeparator).Append("\n");
      sb.Append("  ParsingFormulaOnOpen: ").Append(ParsingFormulaOnOpen).Append("\n");
      sb.Append("  PrecisionAsDisplayed: ").Append(PrecisionAsDisplayed).Append("\n");
      sb.Append("  RecalculateBeforeSave: ").Append(RecalculateBeforeSave).Append("\n");
      sb.Append("  ReCalculateOnOpen: ").Append(ReCalculateOnOpen).Append("\n");
      sb.Append("  RecommendReadOnly: ").Append(RecommendReadOnly).Append("\n");
      sb.Append("  Region: ").Append(Region).Append("\n");
      sb.Append("  RemovePersonalInformation: ").Append(RemovePersonalInformation).Append("\n");
      sb.Append("  RepairLoad: ").Append(RepairLoad).Append("\n");
      sb.Append("  Shared: ").Append(Shared).Append("\n");
      sb.Append("  SheetTabBarWidth: ").Append(SheetTabBarWidth).Append("\n");
      sb.Append("  ShowTabs: ").Append(ShowTabs).Append("\n");
      sb.Append("  UpdateAdjacentCellsBorder: ").Append(UpdateAdjacentCellsBorder).Append("\n");
      sb.Append("  UpdateLinksType: ").Append(UpdateLinksType).Append("\n");
      sb.Append("  WindowHeight: ").Append(WindowHeight).Append("\n");
      sb.Append("  WindowLeft: ").Append(WindowLeft).Append("\n");
      sb.Append("  WindowTop: ").Append(WindowTop).Append("\n");
      sb.Append("  WindowWidth: ").Append(WindowWidth).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
