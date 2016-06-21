package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Rows {
  private Integer MaxRow = null;
  private Integer RowsCount = null;
  private List<LinkElement> RowsList = new ArrayList<LinkElement>();
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
	 * getRowsCount
	 * Gets Integer
	 * @return RowsCount
	 */
  public Integer getRowsCount() {
    return RowsCount;
  }

	/**
	 * setRowsCount
	 * Sets Integer
	 * @param RowsCount Integer
	 */
  public void setRowsCount(Integer RowsCount) {
    this.RowsCount = RowsCount;
  }

  /**
	 * getRowsList
	 * Gets List<LinkElement>
	 * @return RowsList
	 */
  public List<LinkElement> getRowsList() {
    return RowsList;
  }

	/**
	 * setRowsList
	 * Sets List<LinkElement>
	 * @param RowsList List<LinkElement>
	 */
  public void setRowsList(List<LinkElement> RowsList) {
    this.RowsList = RowsList;
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
    sb.append("class Rows {\n");
    sb.append("  MaxRow: ").append(MaxRow).append("\n");
    sb.append("  RowsCount: ").append(RowsCount).append("\n");
    sb.append("  RowsList: ").append(RowsList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

