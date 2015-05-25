package com.aspose.cells.model;

import com.aspose.cells.model.LinkElement;
public class WorksheetReplaceResponse {
  private Integer Matches = null;
  private LinkElement Worksheet = null;
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
	 * getWorksheet
	 * Gets LinkElement
	 * @return Worksheet
	 */
  public LinkElement getWorksheet() {
    return Worksheet;
  }

	/**
	 * setWorksheet
	 * Sets LinkElement
	 * @param Worksheet LinkElement
	 */
  public void setWorksheet(LinkElement Worksheet) {
    this.Worksheet = Worksheet;
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
    sb.append("class WorksheetReplaceResponse {\n");
    sb.append("  Matches: ").append(Matches).append("\n");
    sb.append("  Worksheet: ").append(Worksheet).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

