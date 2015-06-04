package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class PivotTables {
  private List<LinkElement> PivotTableList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getPivotTableList
	 * Gets List<LinkElement>
	 * @return PivotTableList
	 */
  public List<LinkElement> getPivotTableList() {
    return PivotTableList;
  }

	/**
	 * setPivotTableList
	 * Sets List<LinkElement>
	 * @param PivotTableList List<LinkElement>
	 */
  public void setPivotTableList(List<LinkElement> PivotTableList) {
    this.PivotTableList = PivotTableList;
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
    sb.append("class PivotTables {\n");
    sb.append("  PivotTableList: ").append(PivotTableList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

