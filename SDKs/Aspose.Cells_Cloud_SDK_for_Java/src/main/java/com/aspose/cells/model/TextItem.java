package com.aspose.cells.model;

import com.aspose.cells.model.Link;
public class TextItem {
  private String Text = null;
  private Link link = null;
  /**
	 * getText
	 * Gets String
	 * @return Text
	 */
  public String getText() {
    return Text;
  }

	/**
	 * setText
	 * Sets String
	 * @param Text String
	 */
  public void setText(String Text) {
    this.Text = Text;
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
    sb.append("class TextItem {\n");
    sb.append("  Text: ").append(Text).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

