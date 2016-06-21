package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
import com.aspose.cells.model.LinkElement;
public class Cells {
  private Integer MaxRow = null;
  private Integer MaxColumn = null;
  private Integer CellCount = null;
  private LinkElement Rows = null;
  private LinkElement Columns = null;
  private List<LinkElement> CellList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getMaxRow
	 * Gets Integer
	 * @return MaxRow
	 */
  public Integer getMaxRow() {
    return MaxRow;
  }

	/**
	 * setMaxRow
	 * Sets Integer
	 * @param MaxRow Integer
	 */
  public void setMaxRow(Integer MaxRow) {
    this.MaxRow = MaxRow;
  }

  /**
	 * getMaxColumn
	 * Gets Integer
	 * @return MaxColumn
	 */
  public Integer getMaxColumn() {
    return MaxColumn;
  }

	/**
	 * setMaxColumn
	 * Sets Integer
	 * @param MaxColumn Integer
	 */
  public void setMaxColumn(Integer MaxColumn) {
    this.MaxColumn = MaxColumn;
  }

  /**
	 * getCellCount
	 * Gets Integer
	 * @return CellCount
	 */
  public Integer getCellCount() {
    return CellCount;
  }

	/**
	 * setCellCount
	 * Sets Integer
	 * @param CellCount Integer
	 */
  public void setCellCount(Integer CellCount) {
    this.CellCount = CellCount;
  }

  /**
	 * getRows
	 * Gets LinkElement
	 * @return Rows
	 */
  public LinkElement getRows() {
    return Rows;
  }

	/**
	 * setRows
	 * Sets LinkElement
	 * @param Rows LinkElement
	 */
  public void setRows(LinkElement Rows) {
    this.Rows = Rows;
  }

  /**
	 * getColumns
	 * Gets LinkElement
	 * @return Columns
	 */
  public LinkElement getColumns() {
    return Columns;
  }

	/**
	 * setColumns
	 * Sets LinkElement
	 * @param Columns LinkElement
	 */
  public void setColumns(LinkElement Columns) {
    this.Columns = Columns;
  }

  /**
	 * getCellList
	 * Gets List<LinkElement>
	 * @return CellList
	 */
  public List<LinkElement> getCellList() {
    return CellList;
  }

	/**
	 * setCellList
	 * Sets List<LinkElement>
	 * @param CellList List<LinkElement>
	 */
  public void setCellList(List<LinkElement> CellList) {
    this.CellList = CellList;
  }

  /**
	 * getLink
	 * Gets Link
	 * @return link
	 */
  public Link getLink() {
    return link;
  }

	/**
	 * setLink
	 * Sets Link
	 * @param link Link
	 */
  public void setLink(Link link) {
    this.link = link;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Cells {\n");
    sb.append("  MaxRow: ").append(MaxRow).append("\n");
    sb.append("  MaxColumn: ").append(MaxColumn).append("\n");
    sb.append("  CellCount: ").append(CellCount).append("\n");
    sb.append("  Rows: ").append(Rows).append("\n");
    sb.append("  Columns: ").append(Columns).append("\n");
    sb.append("  CellList: ").append(CellList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

