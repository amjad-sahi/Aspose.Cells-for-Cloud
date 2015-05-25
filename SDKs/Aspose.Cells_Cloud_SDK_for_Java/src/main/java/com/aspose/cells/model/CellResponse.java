package com.aspose.cells.model;

import com.aspose.cells.model.Cell;
public class CellResponse {
  private Cell Cell = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getCell
	 * Gets Cell
	 * @return Cell
	 */
  public Cell getCell() {
    return Cell;
  }

	/**
	 * setCell
	 * Sets Cell
	 * @param Cell Cell
	 */
  public void setCell(Cell Cell) {
    this.Cell = Cell;
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
    sb.append("class CellResponse {\n");
    sb.append("  Cell: ").append(Cell).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

