package com.aspose.cells.model;

import com.aspose.cells.model.Legend;
public class LegendResponse {
  private Legend Legend = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getLegend
	 * Gets Legend
	 * @return Legend
	 */
  public Legend getLegend() {
    return Legend;
  }

	/**
	 * setLegend
	 * Sets Legend
	 * @param Legend Legend
	 */
  public void setLegend(Legend Legend) {
    this.Legend = Legend;
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
    sb.append("class LegendResponse {\n");
    sb.append("  Legend: ").append(Legend).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

