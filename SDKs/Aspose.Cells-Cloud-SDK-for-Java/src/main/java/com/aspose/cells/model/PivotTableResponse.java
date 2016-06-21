package com.aspose.cells.model;

import com.aspose.cells.model.PivotTable;
public class PivotTableResponse {
  private PivotTable PivotTable = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getPivotTable
	 * Gets PivotTable
	 * @return PivotTable
	 */
  public PivotTable getPivotTable() {
    return PivotTable;
  }

	/**
	 * setPivotTable
	 * Sets PivotTable
	 * @param PivotTable PivotTable
	 */
  public void setPivotTable(PivotTable PivotTable) {
    this.PivotTable = PivotTable;
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
    sb.append("class PivotTableResponse {\n");
    sb.append("  PivotTable: ").append(PivotTable).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

