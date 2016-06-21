package com.aspose.cells.model;

import com.aspose.cells.model.Picture;
public class PictureResponse {
  private Picture Picture = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getPicture
	 * Gets Picture
	 * @return Picture
	 */
  public Picture getPicture() {
    return Picture;
  }

	/**
	 * setPicture
	 * Sets Picture
	 * @param Picture Picture
	 */
  public void setPicture(Picture Picture) {
    this.Picture = Picture;
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
    sb.append("class PictureResponse {\n");
    sb.append("  Picture: ").append(Picture).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

