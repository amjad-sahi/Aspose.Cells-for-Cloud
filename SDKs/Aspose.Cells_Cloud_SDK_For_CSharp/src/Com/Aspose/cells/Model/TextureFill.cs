using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class TextureFill {
    public string Type { get; set; }

    public double? Transparency { get; set; }

    public double? Scale { get; set; }

    public TilePicOption TilePicOption { get; set; }

    public PicFormatOption PicFormatOption { get; set; }

    public LinkElement Image { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TextureFill {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  Transparency: ").Append(Transparency).Append("\n");
      sb.Append("  Scale: ").Append(Scale).Append("\n");
      sb.Append("  TilePicOption: ").Append(TilePicOption).Append("\n");
      sb.Append("  PicFormatOption: ").Append(PicFormatOption).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
