package com.aspose.cells.model;

import com.aspose.cells.model.Row;
public class RowResponse {
  private Row Row = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getRow
	 * Gets Row
	 * @return Row
	 */
  public Row getRow() {
    return Row;
  }

	/**
	 * setRow
	 * Sets Row
	 * @param Row Row
	 */
  public void setRow(Row Row) {
    this.Row = Row;
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
    sb.append("class RowResponse {\n");
    sb.append("  Row: ").append(Row).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

