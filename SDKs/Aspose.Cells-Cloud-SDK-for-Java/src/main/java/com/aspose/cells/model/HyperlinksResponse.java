package com.aspose.cells.model;

import com.aspose.cells.model.Hyperlinks;
public class HyperlinksResponse {
  private Hyperlinks Hyperlinks = null;
  private String Code = null;
  private String Status = null;
  /**
	 * getHyperlinks
	 * Gets Hyperlinks
	 * @return Hyperlinks
	 */
  public Hyperlinks getHyperlinks() {
    return Hyperlinks;
  }

	/**
	 * setHyperlinks
	 * Sets Hyperlinks
	 * @param Hyperlinks Hyperlinks
	 */
  public void setHyperlinks(Hyperlinks Hyperlinks) {
    this.Hyperlinks = Hyperlinks;
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
    sb.append("class HyperlinksResponse {\n");
    sb.append("  Hyperlinks: ").append(Hyperlinks).append("\n");
    sb.append("  Code: ").append(Code).append("\n");
    sb.append("  Status: ").append(Status).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

