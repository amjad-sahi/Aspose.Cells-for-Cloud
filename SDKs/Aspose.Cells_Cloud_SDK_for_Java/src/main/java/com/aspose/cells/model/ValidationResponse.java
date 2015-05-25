package com.aspose.cells.model;

import com.aspose.cells.model.Validation;
public class ValidationResponse {
  private Validation Validation = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getValidation
	 * Gets Validation
	 * @return Validation
	 */
  public Validation getValidation() {
    return Validation;
  }

	/**
	 * setValidation
	 * Sets Validation
	 * @param Validation Validation
	 */
  public void setValidation(Validation Validation) {
    this.Validation = Validation;
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
    sb.append("class ValidationResponse {\n");
    sb.append("  Validation: ").append(Validation).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

