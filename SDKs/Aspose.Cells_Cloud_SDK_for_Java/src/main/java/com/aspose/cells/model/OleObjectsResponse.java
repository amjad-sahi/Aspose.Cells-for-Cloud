package com.aspose.cells.model;

import com.aspose.cells.model.OleObjects;
public class OleObjectsResponse {
  private OleObjects OleObjects = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getOleObjects
	 * Gets OleObjects
	 * @return OleObjects
	 */
  public OleObjects getOleObjects() {
    return OleObjects;
  }

	/**
	 * setOleObjects
	 * Sets OleObjects
	 * @param OleObjects OleObjects
	 */
  public void setOleObjects(OleObjects OleObjects) {
    this.OleObjects = OleObjects;
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
    sb.append("class OleObjectsResponse {\n");
    sb.append("  OleObjects: ").append(OleObjects).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

