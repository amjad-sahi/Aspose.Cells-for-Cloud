using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class Workbook {
    public string FileName { get; set; }

    public List<Link> Links { get; set; }

    public LinkElement Worksheets { get; set; }

    public LinkElement DefaultStyle { get; set; }

    public LinkElement DocumentProperties { get; set; }

    public LinkElement Names { get; set; }

    public LinkElement Settings { get; set; }

    public string IsWriteProtected { get; set; }

    public string IsProtected { get; set; }

    public string IsEncryption { get; set; }

    public string Password { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class Workbook {\n");
      sb.Append("  FileName: ").Append(FileName).Append("\n");
      sb.Append("  Links: ").Append(Links).Append("\n");
      sb.Append("  Worksheets: ").Append(Worksheets).Append("\n");
      sb.Append("  DefaultStyle: ").Append(DefaultStyle).Append("\n");
      sb.Append("  DocumentProperties: ").Append(DocumentProperties).Append("\n");
      sb.Append("  Names: ").Append(Names).Append("\n");
      sb.Append("  Settings: ").Append(Settings).Append("\n");
      sb.Append("  IsWriteProtected: ").Append(IsWriteProtected).Append("\n");
      sb.Append("  IsProtected: ").Append(IsProtected).Append("\n");
      sb.Append("  IsEncryption: ").Append(IsEncryption).Append("\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
