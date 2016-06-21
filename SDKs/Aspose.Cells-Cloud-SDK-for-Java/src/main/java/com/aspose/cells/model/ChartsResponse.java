package com.aspose.cells.model;

import com.aspose.cells.model.Charts;
public class ChartsResponse {
  private Charts Charts = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getCharts
	 * Gets Charts
	 * @return Charts
	 */
  public Charts getCharts() {
    return Charts;
  }

	/**
	 * setCharts
	 * Sets Charts
	 * @param Charts Charts
	 */
  public void setCharts(Charts Charts) {
    this.Charts = Charts;
  }

  /**
	 * getCode
	 * Gets String
	 * @return Code
	 */
  public String getCode() {
    return Code;
  }

	/**
	 * setCode
	 * Sets String
	 * @param Code String
	 */
  public void setCode(String Code) {
    this.Code = Code;
  }

  /**
	 * getStatus
	 * Gets String
	 * @return Status
	 */
  public String getStatus() {
    return Status;
  }

	/**
	 * setStatus
	 * Sets String
	 * @param Status String
	 */
  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChartsResponse {\n");
    sb.append("  Charts: ").append(Charts).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

