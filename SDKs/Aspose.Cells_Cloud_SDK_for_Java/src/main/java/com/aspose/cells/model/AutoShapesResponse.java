package com.aspose.cells.model;

import com.aspose.cells.model.AutoShapes;
public class AutoShapesResponse {
  private AutoShapes AutoShapes = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAutoShapes
	 * Gets AutoShapes
	 * @return AutoShapes
	 */
  public AutoShapes getAutoShapes() {
    return AutoShapes;
  }

	/**
	 * setAutoShapes
	 * Sets AutoShapes
	 * @param AutoShapes AutoShapes
	 */
  public void setAutoShapes(AutoShapes AutoShapes) {
    this.AutoShapes = AutoShapes;
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
    sb.append("class AutoShapesResponse {\n");
    sb.append("  AutoShapes: ").append(AutoShapes).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

