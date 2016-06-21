package com.aspose.cells.model;

public class CellArea {
  private Integer EndColumn = null;
  private Integer EndRow = null;
  private Integer StartColumn = null;
  private Integer StartRow = null;
  /**
	 * getEndColumn
	 * Gets Integer
	 * @return EndColumn
	 */
  public Integer getEndColumn() {
    return EndColumn;
  }

	/**
	 * setEndColumn
	 * Sets Integer
	 * @param EndColumn Integer
	 */
  public void setEndColumn(Integer EndColumn) {
    this.EndColumn = EndColumn;
  }

  /**
	 * getEndRow
	 * Gets Integer
	 * @return EndRow
	 */
  public Integer getEndRow() {
    return EndRow;
  }

	/**
	 * setEndRow
	 * Sets Integer
	 * @param EndRow Integer
	 */
  public void setEndRow(Integer EndRow) {
    this.EndRow = EndRow;
  }

  /**
	 * getStartColumn
	 * Gets Integer
	 * @return StartColumn
	 */
  public Integer getStartColumn() {
    return StartColumn;
  }

	/**
	 * setStartColumn
	 * Sets Integer
	 * @param StartColumn Integer
	 */
  public void setStartColumn(Integer StartColumn) {
    this.StartColumn = StartColumn;
  }

  /**
	 * getStartRow
	 * Gets Integer
	 * @return StartRow
	 */
  public Integer getStartRow() {
    return StartRow;
  }

	/**
	 * setStartRow
	 * Sets Integer
	 * @param StartRow Integer
	 */
  public void setStartRow(Integer StartRow) {
    this.StartRow = StartRow;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CellArea {\n");
    sb.append("  EndColumn: ").append(EndColumn).append("\n");
    sb.append("  EndRow: ").append(EndRow).append("\n");
    sb.append("  StartColumn: ").append(StartColumn).append("\n");
    sb.append("  StartRow: ").append(StartRow).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

