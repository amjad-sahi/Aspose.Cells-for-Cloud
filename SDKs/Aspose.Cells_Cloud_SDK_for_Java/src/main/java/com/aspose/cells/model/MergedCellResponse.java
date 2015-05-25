package com.aspose.cells.model;

import com.aspose.cells.model.MergedCell;
public class MergedCellResponse {
  private MergedCell MergedCell = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getMergedCell
	 * Gets MergedCell
	 * @return MergedCell
	 */
  public MergedCell getMergedCell() {
    return MergedCell;
  }

	/**
	 * setMergedCell
	 * Sets MergedCell
	 * @param MergedCell MergedCell
	 */
  public void setMergedCell(MergedCell MergedCell) {
    this.MergedCell = MergedCell;
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
    sb.append("class MergedCellResponse {\n");
    sb.append("  MergedCell: ").append(MergedCell).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

