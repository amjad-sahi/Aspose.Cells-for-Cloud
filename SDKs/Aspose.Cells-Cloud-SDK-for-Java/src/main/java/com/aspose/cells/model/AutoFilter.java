package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
import com.aspose.cells.model.DataSorter;
public class AutoFilter {
  private List<FilterColumn> FilterColumns = new ArrayList<FilterColumn>();
  private String Range = null;
  private DataSorter Sorter = null;
  private Link link = null;
  /**
	 * getFilterColumns
	 * Gets List<FilterColumn>
	 * @return FilterColumns
	 */
  public List<FilterColumn> getFilterColumns() {
    return FilterColumns;
  }

	/**
	 * setFilterColumns
	 * Sets List<FilterColumn>
	 * @param FilterColumns List<FilterColumn>
	 */
  public void setFilterColumns(List<FilterColumn> FilterColumns) {
    this.FilterColumns = FilterColumns;
  }

  /**
	 * getRange
	 * Gets String
	 * @return Range
	 */
  public String getRange() {
    return Range;
  }

	/**
	 * setRange
	 * Sets String
	 * @param Range String
	 */
  public void setRange(String Range) {
    this.Range = Range;
  }

  /**
	 * getSorter
	 * Gets DataSorter
	 * @return Sorter
	 */
  public DataSorter getSorter() {
    return Sorter;
  }

	/**
	 * setSorter
	 * Sets DataSorter
	 * @param Sorter DataSorter
	 */
  public void setSorter(DataSorter Sorter) {
    this.Sorter = Sorter;
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
    sb.append("class AutoFilter {\n");
    sb.append("  FilterColumns: ").append(FilterColumns).append("\n");
    sb.append("  Range: ").append(Range).append("\n");
    sb.append("  Sorter: ").append(Sorter).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

