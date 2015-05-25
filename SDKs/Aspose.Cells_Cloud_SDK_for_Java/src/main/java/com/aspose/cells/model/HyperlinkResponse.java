package com.aspose.cells.model;

import com.aspose.cells.model.Hyperlink;
public class HyperlinkResponse {
  private Hyperlink Hyperlink = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getHyperlink
	 * Gets Hyperlink
	 * @return Hyperlink
	 */
  public Hyperlink getHyperlink() {
    return Hyperlink;
  }

	/**
	 * setHyperlink
	 * Sets Hyperlink
	 * @param Hyperlink Hyperlink
	 */
  public void setHyperlink(Hyperlink Hyperlink) {
    this.Hyperlink = Hyperlink;
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
    sb.append("class HyperlinkResponse {\n");
    sb.append("  Hyperlink: ").append(Hyperlink).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

