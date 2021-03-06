package com.aspose.cells.model;

import com.aspose.cells.model.Rows;
public class RowsResponse {
  private Rows Rows = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getRows
	 * Gets Rows
	 * @return Rows
	 */
  public Rows getRows() {
    return Rows;
  }

	/**
	 * setRows
	 * Sets Rows
	 * @param Rows Rows
	 */
  public void setRows(Rows Rows) {
    this.Rows = Rows;
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
    sb.append("class RowsResponse {\n");
    sb.append("  Rows: ").append(Rows).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

