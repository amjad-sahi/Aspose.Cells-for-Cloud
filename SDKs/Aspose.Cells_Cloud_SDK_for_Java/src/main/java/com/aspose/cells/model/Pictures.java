package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Pictures {
  private List<LinkElement> PictureList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getPictureList
	 * Gets List<LinkElement>
	 * @return PictureList
	 */
  public List<LinkElement> getPictureList() {
    return PictureList;
  }

	/**
	 * setPictureList
	 * Sets List<LinkElement>
	 * @param PictureList List<LinkElement>
	 */
  public void setPictureList(List<LinkElement> PictureList) {
    this.PictureList = PictureList;
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
    sb.append("class Pictures {\n");
    sb.append("  PictureList: ").append(PictureList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

