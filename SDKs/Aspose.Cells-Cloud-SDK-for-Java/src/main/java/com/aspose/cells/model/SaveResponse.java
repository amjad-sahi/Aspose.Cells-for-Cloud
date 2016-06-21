package com.aspose.cells.model;

import com.aspose.cells.model.SaveResult;
public class SaveResponse {
  private SaveResult SaveResult = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getSaveResult
	 * Gets SaveResult
	 * @return SaveResult
	 */
  public SaveResult getSaveResult() {
    return SaveResult;
  }

	/**
	 * setSaveResult
	 * Sets SaveResult
	 * @param SaveResult SaveResult
	 */
  public void setSaveResult(SaveResult SaveResult) {
    this.SaveResult = SaveResult;
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
    sb.append("class SaveResponse {\n");
    sb.append("  SaveResult: ").append(SaveResult).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

