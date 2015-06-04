package com.aspose.cells.model;

public class AutoShapeResponse {
  private AutoShape AutoShape = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getAutoShape
	 * Gets AutoShape
	 * @return AutoShape
	 */
  public AutoShape getAutoShape() {
    return AutoShape;
  }

	/**
	 * setAutoShape
	 * Sets AutoShape
	 * @param AutoShapes AutoShape
	 */
  public void setAutoShape(AutoShape AutoShape) {
    this.AutoShape = AutoShape;
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
    sb.append("  AutoShape: ").append(AutoShape).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

