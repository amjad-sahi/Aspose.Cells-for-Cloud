package com.aspose.cells.model;

import com.aspose.cells.model.Cells;
public class CellsResponse {
  private Cells Cells = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getCells
	 * Gets Cells
	 * @return Cells
	 */
  public Cells getCells() {
    return Cells;
  }

	/**
	 * setCells
	 * Sets Cells
	 * @param Cells Cells
	 */
  public void setCells(Cells Cells) {
    this.Cells = Cells;
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
    sb.append("class CellsResponse {\n");
    sb.append("  Cells: ").append(Cells).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

