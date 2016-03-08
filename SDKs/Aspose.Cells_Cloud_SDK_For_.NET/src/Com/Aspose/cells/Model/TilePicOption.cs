using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class TilePicOption {
    public double? OffsetX { get; set; }

    public double? OffsetY { get; set; }

    public double? ScaleX { get; set; }

    public double? ScaleY { get; set; }

    public string AlignmentType { get; set; }

    public string MirrorType { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TilePicOption {\n");
      sb.Append("  OffsetX: ").Append(OffsetX).Append("\n");
      sb.Append("  OffsetY: ").Append(OffsetY).Append("\n");
      sb.Append("  ScaleX: ").Append(ScaleX).Append("\n");
      sb.Append("  ScaleY: ").Append(ScaleY).Append("\n");
      sb.Append("  AlignmentType: ").Append(AlignmentType).Append("\n");
      sb.Append("  MirrorType: ").Append(MirrorType).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
