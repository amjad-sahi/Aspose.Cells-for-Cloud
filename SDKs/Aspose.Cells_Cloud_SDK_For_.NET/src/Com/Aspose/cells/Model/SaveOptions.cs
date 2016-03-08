using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace Com.Aspose.Cells.Model {
  public class SaveOptions {
    public string CachedFileFolder { get; set; }

    public bool? ClearData { get; set; }

    public bool? CreateDirectory { get; set; }

    public bool? EnableHTTPCompression { get; set; }

    public bool? RefreshChartCache { get; set; }

    public bool? SortNames { get; set; }

    public bool? ValidateMergedAreas { get; set; }

    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SaveOptions {\n");
      sb.Append("  CachedFileFolder: ").Append(CachedFileFolder).Append("\n");
      sb.Append("  ClearData: ").Append(ClearData).Append("\n");
      sb.Append("  CreateDirectory: ").Append(CreateDirectory).Append("\n");
      sb.Append("  EnableHTTPCompression: ").Append(EnableHTTPCompression).Append("\n");
      sb.Append("  RefreshChartCache: ").Append(RefreshChartCache).Append("\n");
      sb.Append("  SortNames: ").Append(SortNames).Append("\n");
      sb.Append("  ValidateMergedAreas: ").Append(ValidateMergedAreas).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }
  }
  }
