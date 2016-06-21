package com.aspose.cells.model;

import com.aspose.cells.model.Worksheets;
public class WorksheetsResponse {
  private Worksheets Worksheets = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getWorksheets
	 * Gets Worksheets
	 * @return Worksheets
	 */
  public Worksheets getWorksheets() {
    return Worksheets;
  }

	/**
	 * setWorksheets
	 * Sets Worksheets
	 * @param Worksheets Worksheets
	 */
  public void setWorksheets(Worksheets Worksheets) {
    this.Worksheets = Worksheets;
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
    sb.append("class WorksheetsResponse {\n");
    sb.append("  Worksheets: ").append(Worksheets).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

