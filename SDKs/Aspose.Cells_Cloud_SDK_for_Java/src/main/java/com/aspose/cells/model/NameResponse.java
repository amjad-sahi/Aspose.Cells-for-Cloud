package com.aspose.cells.model;

import com.aspose.cells.model.Name;
public class NameResponse {
  private Name Name = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getName
	 * Gets Name
	 * @return Name
	 */
  public Name getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets Name
	 * @param Name Name
	 */
  public void setName(Name Name) {
    this.Name = Name;
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
    sb.append("class NameResponse {\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

