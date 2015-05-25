package com.aspose.cells.model;

import com.aspose.cells.model.Names;
public class NamesResponse {
  private Names Names = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getNames
	 * Gets Names
	 * @return Names
	 */
  public Names getNames() {
    return Names;
  }

	/**
	 * setNames
	 * Sets Names
	 * @param Names Names
	 */
  public void setNames(Names Names) {
    this.Names = Names;
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
    sb.append("class NamesResponse {\n");
    sb.append("  Names: ").append(Names).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

