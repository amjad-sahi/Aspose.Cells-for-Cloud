package com.aspose.cells.model;

import com.aspose.cells.model.SingleValue;
public class SingleValueResponse {
  private SingleValue Value = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getValue
	 * Gets SingleValue
	 * @return Value
	 */
  public SingleValue getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets SingleValue
	 * @param Value SingleValue
	 */
  public void setValue(SingleValue Value) {
    this.Value = Value;
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
    sb.append("class SingleValueResponse {\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

