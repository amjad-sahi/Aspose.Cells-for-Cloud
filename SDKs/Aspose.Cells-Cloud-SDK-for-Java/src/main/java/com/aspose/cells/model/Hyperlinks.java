package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Hyperlinks {
  private Integer Count = null;
  private List<LinkElement> HyperlinkList = new ArrayList<LinkElement>();
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
	 * getHyperlinkList
	 * Gets List<LinkElement>
	 * @return HyperlinkList
	 */
  public List<LinkElement> getHyperlinkList() {
    return HyperlinkList;
  }

	/**
	 * setHyperlinkList
	 * Sets List<LinkElement>
	 * @param HyperlinkList List<LinkElement>
	 */
  public void setHyperlinkList(List<LinkElement> HyperlinkList) {
    this.HyperlinkList = HyperlinkList;
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
    sb.append("class Hyperlinks {\n");
    sb.append("  Count: ").append(Count).append("\n");
    sb.append("  HyperlinkList: ").append(HyperlinkList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

