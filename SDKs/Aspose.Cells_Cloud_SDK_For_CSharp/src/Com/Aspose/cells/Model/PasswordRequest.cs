using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class PasswordRequest {
    public string Password { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class PasswordRequest {\n");
      sb.Append("  Password: ").Append(Password).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
