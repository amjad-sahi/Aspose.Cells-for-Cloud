package com.aspose.cells.model;

import com.aspose.cells.model.Pictures;
public class PicturesResponse {
  private Pictures Pictures = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getPictures
	 * Gets Pictures
	 * @return Pictures
	 */
  public Pictures getPictures() {
    return Pictures;
  }

	/**
	 * setPictures
	 * Sets Pictures
	 * @param Pictures Pictures
	 */
  public void setPictures(Pictures Pictures) {
    this.Pictures = Pictures;
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
    sb.append("class PicturesResponse {\n");
    sb.append("  Pictures: ").append(Pictures).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

