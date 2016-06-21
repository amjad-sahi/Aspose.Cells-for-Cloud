package com.aspose.cells.model;

import com.aspose.cells.model.PivotTables;
public class PivotTablesResponse {
  private PivotTables PivotTables = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getPivotTables
	 * Gets PivotTables
	 * @return PivotTables
	 */
  public PivotTables getPivotTables() {
    return PivotTables;
  }

	/**
	 * setPivotTables
	 * Sets PivotTables
	 * @param PivotTables PivotTables
	 */
  public void setPivotTables(PivotTables PivotTables) {
    this.PivotTables = PivotTables;
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
    sb.append("class PivotTablesResponse {\n");
    sb.append("  PivotTables: ").append(PivotTables).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

