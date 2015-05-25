package com.aspose.cells.model;

import com.aspose.cells.model.Workbook;
public class WorkbookResponse {
  private Workbook Workbook = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getWorkbook
	 * Gets Workbook
	 * @return Workbook
	 */
  public Workbook getWorkbook() {
    return Workbook;
  }

	/**
	 * setWorkbook
	 * Sets Workbook
	 * @param Workbook Workbook
	 */
  public void setWorkbook(Workbook Workbook) {
    this.Workbook = Workbook;
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
    sb.append("class WorkbookResponse {\n");
    sb.append("  Workbook: ").append(Workbook).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

