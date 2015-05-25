package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Names {
  private Integer Count = null;
  private List<LinkElement> NameList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getCount
	 * Gets Integer
	 * @return Count
	 */
  public Integer getCount() {
    return Count;
  }

	/**
	 * setCount
	 * Sets Integer
	 * @param Count Integer
	 */
  public void setCount(Integer Count) {
    this.Count = Count;
  }

  /**
	 * getNameList
	 * Gets List<LinkElement>
	 * @return NameList
	 */
  public List<LinkElement> getNameList() {
    return NameList;
  }

	/**
	 * setNameList
	 * Sets List<LinkElement>
	 * @param NameList List<LinkElement>
	 */
  public void setNameList(List<LinkElement> NameList) {
    this.NameList = NameList;
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
    sb.append("class Names {\n");
    sb.append("  Count: ").append(Count).append("\n");
    sb.append("  NameList: ").append(NameList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

