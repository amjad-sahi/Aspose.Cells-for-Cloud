package com.aspose.cells.model;

import com.aspose.cells.model.Columns;
public class ColumnsResponse {
  private Columns Columns = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getColumns
	 * Gets Columns
	 * @return Columns
	 */
  public Columns getColumns() {
    return Columns;
  }

	/**
	 * setColumns
	 * Sets Columns
	 * @param Columns Columns
	 */
  public void setColumns(Columns Columns) {
    this.Columns = Columns;
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
    sb.append("class ColumnsResponse {\n");
    sb.append("  Columns: ").append(Columns).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

