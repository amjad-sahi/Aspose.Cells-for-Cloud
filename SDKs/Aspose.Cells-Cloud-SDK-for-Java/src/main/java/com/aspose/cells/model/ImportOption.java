package com.aspose.cells.model;

public class ImportOption {
  private String DestinationWorksheet = null;
  private Boolean IsInsert = null;
  /**
	 * getDestinationWorksheet
	 * Gets String
	 * @return DestinationWorksheet
	 */
  public String getDestinationWorksheet() {
    return DestinationWorksheet;
  }

	/**
	 * setDestinationWorksheet
	 * Sets String
	 * @param DestinationWorksheet String
	 */
  public void setDestinationWorksheet(String DestinationWorksheet) {
    this.DestinationWorksheet = DestinationWorksheet;
  }

  /**
	 * getIsInsert
	 * Gets Boolean
	 * @return IsInsert
	 */
  public Boolean getIsInsert() {
    return IsInsert;
  }

	/**
	 * setIsInsert
	 * Sets Boolean
	 * @param IsInsert Boolean
	 */
  public void setIsInsert(Boolean IsInsert) {
    this.IsInsert = IsInsert;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImportOption {\n");
    sb.append("  DestinationWorksheet: ").append(DestinationWorksheet).append("\n");
    sb.append("  IsInsert: ").append(IsInsert).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

