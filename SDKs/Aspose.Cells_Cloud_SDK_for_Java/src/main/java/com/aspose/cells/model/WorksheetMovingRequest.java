package com.aspose.cells.model;

public class WorksheetMovingRequest {
  private String DestinationWorksheet = null;
  private String Position = null;
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
	 * getPosition
	 * Gets String
	 * @return Position
	 */
  public String getPosition() {
    return Position;
  }

	/**
	 * setPosition
	 * Sets String
	 * @param Position String
	 */
  public void setPosition(String Position) {
    this.Position = Position;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WorksheetMovingRequest {\n");
    sb.append("  DestinationWorksheet: ").append(DestinationWorksheet).append("\n");
    sb.append("  Position: ").append(Position).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

