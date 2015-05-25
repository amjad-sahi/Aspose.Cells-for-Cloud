package com.aspose.cells.model;

import com.aspose.cells.model.Line;
public class LineResponse {
  private Line Line = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getLine
	 * Gets Line
	 * @return Line
	 */
  public Line getLine() {
    return Line;
  }

	/**
	 * setLine
	 * Sets Line
	 * @param Line Line
	 */
  public void setLine(Line Line) {
    this.Line = Line;
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
    sb.append("class LineResponse {\n");
    sb.append("  Line: ").append(Line).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

