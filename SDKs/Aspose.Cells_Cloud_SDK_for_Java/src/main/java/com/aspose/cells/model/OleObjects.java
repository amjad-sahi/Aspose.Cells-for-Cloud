package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class OleObjects {
  private List<LinkElement> OleObjectList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getOleObjectList
	 * Gets List<LinkElement>
	 * @return OleObjectList
	 */
  public List<LinkElement> getOleObjectList() {
    return OleObjectList;
  }

	/**
	 * setOleObjectList
	 * Sets List<LinkElement>
	 * @param OleObjectList List<LinkElement>
	 */
  public void setOleObjectList(List<LinkElement> OleObjectList) {
    this.OleObjectList = OleObjectList;
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
    sb.append("class OleObjects {\n");
    sb.append("  OleObjectList: ").append(OleObjectList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

