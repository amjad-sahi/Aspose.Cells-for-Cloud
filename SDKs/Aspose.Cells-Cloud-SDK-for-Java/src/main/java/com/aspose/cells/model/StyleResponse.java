package com.aspose.cells.model;

import com.aspose.cells.model.Style;
public class StyleResponse {
  private Style Style = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getStyle
	 * Gets Style
	 * @return Style
	 */
  public Style getStyle() {
    return Style;
  }

	/**
	 * setStyle
	 * Sets Style
	 * @param Style Style
	 */
  public void setStyle(Style Style) {
    this.Style = Style;
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
    sb.append("class StyleResponse {\n");
    sb.append("  Style: ").append(Style).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

