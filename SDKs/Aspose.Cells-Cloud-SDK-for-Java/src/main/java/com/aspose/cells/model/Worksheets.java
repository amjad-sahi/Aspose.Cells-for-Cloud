package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Worksheets {
  private List<LinkElement> WorksheetList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getWorksheetList
	 * Gets List<LinkElement>
	 * @return WorksheetList
	 */
  public List<LinkElement> getWorksheetList() {
    return WorksheetList;
  }

	/**
	 * setWorksheetList
	 * Sets List<LinkElement>
	 * @param WorksheetList List<LinkElement>
	 */
  public void setWorksheetList(List<LinkElement> WorksheetList) {
    this.WorksheetList = WorksheetList;
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
    sb.append("class Worksheets {\n");
    sb.append("  WorksheetList: ").append(WorksheetList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

