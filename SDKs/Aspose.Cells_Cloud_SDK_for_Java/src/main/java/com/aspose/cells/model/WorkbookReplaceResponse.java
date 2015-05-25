package com.aspose.cells.model;

import com.aspose.cells.model.LinkElement;
public class WorkbookReplaceResponse {
  private Integer Matches = null;
  private LinkElement Workbook = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getMatches
	 * Gets Integer
	 * @return Matches
	 */
  public Integer getMatches() {
    return Matches;
  }

	/**
	 * setMatches
	 * Sets Integer
	 * @param Matches Integer
	 */
  public void setMatches(Integer Matches) {
    this.Matches = Matches;
  }

  /**
	 * getWorkbook
	 * Gets LinkElement
	 * @return Workbook
	 */
  public LinkElement getWorkbook() {
    return Workbook;
  }

	/**
	 * setWorkbook
	 * Sets LinkElement
	 * @param Workbook LinkElement
	 */
  public void setWorkbook(LinkElement Workbook) {
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
    sb.append("class WorkbookReplaceResponse {\n");
    sb.append("  Matches: ").append(Matches).append("\n");
    sb.append("  Workbook: ").append(Workbook).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

