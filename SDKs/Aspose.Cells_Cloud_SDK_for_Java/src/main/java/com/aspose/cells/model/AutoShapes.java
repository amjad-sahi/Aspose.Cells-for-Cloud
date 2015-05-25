package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class AutoShapes {
  private List<LinkElement> AutoShapeList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getAutoShapeList
	 * Gets List<LinkElement>
	 * @return AutoShapeList
	 */
  public List<LinkElement> getAutoShapeList() {
    return AutoShapeList;
  }

	/**
	 * setAutoShapeList
	 * Sets List<LinkElement>
	 * @param AutoShapeList List<LinkElement>
	 */
  public void setAutoShapeList(List<LinkElement> AutoShapeList) {
    this.AutoShapeList = AutoShapeList;
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
    sb.append("class AutoShapes {\n");
    sb.append("  AutoShapeList: ").append(AutoShapeList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

