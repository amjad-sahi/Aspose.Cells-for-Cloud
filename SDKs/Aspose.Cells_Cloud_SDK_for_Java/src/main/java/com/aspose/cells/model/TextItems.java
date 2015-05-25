package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class TextItems {
  private List<TextItem> TextItemList = new ArrayList<TextItem>();
  private Link link = null;
  /**
	 * getTextItemList
	 * Gets List<TextItem>
	 * @return TextItemList
	 */
  public List<TextItem> getTextItemList() {
    return TextItemList;
  }

	/**
	 * setTextItemList
	 * Sets List<TextItem>
	 * @param TextItemList List<TextItem>
	 */
  public void setTextItemList(List<TextItem> TextItemList) {
    this.TextItemList = TextItemList;
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
    sb.append("class TextItems {\n");
    sb.append("  TextItemList: ").append(TextItemList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

