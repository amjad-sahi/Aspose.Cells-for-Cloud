package com.aspose.cells.model;

import com.aspose.cells.model.Column;
public class ColumnResponse {
  private Column Column = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getColumn
	 * Gets Column
	 * @return Column
	 */
  public Column getColumn() {
    return Column;
  }

	/**
	 * setColumn
	 * Sets Column
	 * @param Column Column
	 */
  public void setColumn(Column Column) {
    this.Column = Column;
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
    sb.append("class ColumnResponse {\n");
    sb.append("  Column: ").append(Column).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

