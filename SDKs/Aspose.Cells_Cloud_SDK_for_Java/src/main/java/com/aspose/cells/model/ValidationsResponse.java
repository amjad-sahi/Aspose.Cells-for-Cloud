package com.aspose.cells.model;

import com.aspose.cells.model.Validations;
public class ValidationsResponse {
  private Validations Validations = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getValidations
	 * Gets Validations
	 * @return Validations
	 */
  public Validations getValidations() {
    return Validations;
  }

	/**
	 * setValidations
	 * Sets Validations
	 * @param Validations Validations
	 */
  public void setValidations(Validations Validations) {
    this.Validations = Validations;
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
    sb.append("class ValidationsResponse {\n");
    sb.append("  Validations: ").append(Validations).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

