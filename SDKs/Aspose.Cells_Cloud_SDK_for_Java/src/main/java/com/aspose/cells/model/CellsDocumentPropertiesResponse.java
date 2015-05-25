package com.aspose.cells.model;

import com.aspose.cells.model.CellsDocumentProperties;
public class CellsDocumentPropertiesResponse {
  private CellsDocumentProperties DocumentProperties = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getDocumentProperties
	 * Gets CellsDocumentProperties
	 * @return DocumentProperties
	 */
  public CellsDocumentProperties getDocumentProperties() {
    return DocumentProperties;
  }

	/**
	 * setDocumentProperties
	 * Sets CellsDocumentProperties
	 * @param DocumentProperties CellsDocumentProperties
	 */
  public void setDocumentProperties(CellsDocumentProperties DocumentProperties) {
    this.DocumentProperties = DocumentProperties;
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
    sb.append("class CellsDocumentPropertiesResponse {\n");
    sb.append("  DocumentProperties: ").append(DocumentProperties).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

