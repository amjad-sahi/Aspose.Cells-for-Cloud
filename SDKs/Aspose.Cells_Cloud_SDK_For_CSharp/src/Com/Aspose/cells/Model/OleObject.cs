using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class OleObject {
    public bool? DisplayAsIcon { get; set; }

    public string FileFormatType { get; set; }

    public string ImageSourceFullName { get; set; }

    public bool? IsAutoSize { get; set; }

    public bool? IsLink { get; set; }

    public string ProgID { get; set; }

    public string SourceFullName { get; set; }

    public string Name { get; set; }

    public string MsoDrawingType { get; set; }

    public string AutoShapeType { get; set; }

    public string Placement { get; set; }

    public int? UpperLeftRow { get; set; }

    public int? Top { get; set; }

    public int? UpperLeftColumn { get; set; }

    public int? Left { get; set; }

    public int? LowerRightRow { get; set; }

    public int? Bottom { get; set; }

    public int? LowerRightColumn { get; set; }

    public int? Right { get; set; }

    public int? Width { get; set; }

    public int? Height { get; set; }

    public int? X { get; set; }

    public int? Y { get; set; }

    public double? RotationAngle { get; set; }

    public string HtmlText { get; set; }

    public string Text { get; set; }

    public string AlternativeText { get; set; }

    public string TextHorizontalAlignment { get; set; }

    public string TextHorizontalOverflow { get; set; }

    public string TextOrientationType { get; set; }

    public string TextVerticalAlignment { get; set; }

    public string TextVerticalOverflow { get; set; }

    public bool? IsGroup { get; set; }

    public bool? IsHidden { get; set; }

    public bool? IsLockAspectRatio { get; set; }

    public bool? IsLocked { get; set; }

    public bool? IsPrintable { get; set; }

    public bool? IsTextWrapped { get; set; }

    public bool? IsWordArt { get; set; }

    public string LinkedCell { get; set; }

    public int? ZOrderPosition { get; set; }

    public Link link { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class OleObject {\n");
      sb.Append("  DisplayAsIcon: ").Append(DisplayAsIcon).Append("\n");
      sb.Append("  FileFormatType: ").Append(FileFormatType).Append("\n");
      sb.Append("  ImageSourceFullName: ").Append(ImageSourceFullName).Append("\n");
      sb.Append("  IsAutoSize: ").Append(IsAutoSize).Append("\n");
      sb.Append("  IsLink: ").Append(IsLink).Append("\n");
      sb.Append("  ProgID: ").Append(ProgID).Append("\n");
      sb.Append("  SourceFullName: ").Append(SourceFullName).Append("\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  MsoDrawingType: ").Append(MsoDrawingType).Append("\n");
      sb.Append("  AutoShapeType: ").Append(AutoShapeType).Append("\n");
      sb.Append("  Placement: ").Append(Placement).Append("\n");
      sb.Append("  UpperLeftRow: ").Append(UpperLeftRow).Append("\n");
      sb.Append("  Top: ").Append(Top).Append("\n");
      sb.Append("  UpperLeftColumn: ").Append(UpperLeftColumn).Append("\n");
      sb.Append("  Left: ").Append(Left).Append("\n");
      sb.Append("  LowerRightRow: ").Append(LowerRightRow).Append("\n");
      sb.Append("  Bottom: ").Append(Bottom).Append("\n");
      sb.Append("  LowerRightColumn: ").Append(LowerRightColumn).Append("\n");
      sb.Append("  Right: ").Append(Right).Append("\n");
      sb.Append("  Width: ").Append(Width).Append("\n");
      sb.Append("  Height: ").Append(Height).Append("\n");
      sb.Append("  X: ").Append(X).Append("\n");
      sb.Append("  Y: ").Append(Y).Append("\n");
      sb.Append("  RotationAngle: ").Append(RotationAngle).Append("\n");
      sb.Append("  HtmlText: ").Append(HtmlText).Append("\n");
      sb.Append("  Text: ").Append(Text).Append("\n");
      sb.Append("  AlternativeText: ").Append(AlternativeText).Append("\n");
      sb.Append("  TextHorizontalAlignment: ").Append(TextHorizontalAlignment).Append("\n");
      sb.Append("  TextHorizontalOverflow: ").Append(TextHorizontalOverflow).Append("\n");
      sb.Append("  TextOrientationType: ").Append(TextOrientationType).Append("\n");
      sb.Append("  TextVerticalAlignment: ").Append(TextVerticalAlignment).Append("\n");
      sb.Append("  TextVerticalOverflow: ").Append(TextVerticalOverflow).Append("\n");
      sb.Append("  IsGroup: ").Append(IsGroup).Append("\n");
      sb.Append("  IsHidden: ").Append(IsHidden).Append("\n");
      sb.Append("  IsLockAspectRatio: ").Append(IsLockAspectRatio).Append("\n");
      sb.Append("  IsLocked: ").Append(IsLocked).Append("\n");
      sb.Append("  IsPrintable: ").Append(IsPrintable).Append("\n");
      sb.Append("  IsTextWrapped: ").Append(IsTextWrapped).Append("\n");
      sb.Append("  IsWordArt: ").Append(IsWordArt).Append("\n");
      sb.Append("  LinkedCell: ").Append(LinkedCell).Append("\n");
      sb.Append("  ZOrderPosition: ").Append(ZOrderPosition).Append("\n");
      sb.Append("  link: ").Append(link).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
