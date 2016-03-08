using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class WorkbookEncryptionRequest {
    public string EncryptionType { get; set; }

    public int? KeyLength { get; set; }

    public string Password { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class WorkbookEncryptionRequest {\n");
      sb.Append("  EncryptionType: ").Append(EncryptionType).Append("\n");
      sb.Append("  KeyLength: ").Append(KeyLength).Append("\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
