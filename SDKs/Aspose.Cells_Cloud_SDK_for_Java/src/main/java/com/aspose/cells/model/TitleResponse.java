package com.aspose.cells.model;

import com.aspose.cells.model.Title;
public class TitleResponse {
  private Title Title = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getTitle
	 * Gets Title
	 * @return Title
	 */
  public Title getTitle() {
    return Title;
  }

	/**
	 * setTitle
	 * Sets Title
	 * @param Title Title
	 */
  public void setTitle(Title Title) {
    this.Title = Title;
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
    sb.append("class TitleResponse {\n");
    sb.append("  Title: ").append(Title).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

