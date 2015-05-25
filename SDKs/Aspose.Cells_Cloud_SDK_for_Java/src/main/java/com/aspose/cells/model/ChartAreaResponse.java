package com.aspose.cells.model;

import com.aspose.cells.model.ChartArea;
public class ChartAreaResponse {
  private ChartArea ChartArea = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getChartArea
	 * Gets ChartArea
	 * @return ChartArea
	 */
  public ChartArea getChartArea() {
    return ChartArea;
  }

	/**
	 * setChartArea
	 * Sets ChartArea
	 * @param ChartArea ChartArea
	 */
  public void setChartArea(ChartArea ChartArea) {
    this.ChartArea = ChartArea;
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
    sb.append("class ChartAreaResponse {\n");
    sb.append("  ChartArea: ").append(ChartArea).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

