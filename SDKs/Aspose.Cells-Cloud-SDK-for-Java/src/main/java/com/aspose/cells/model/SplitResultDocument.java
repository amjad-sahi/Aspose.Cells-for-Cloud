package com.aspose.cells.model;

import com.aspose.cells.model.Link;
public class SplitResultDocument {
  private Integer Id = null;
  private Link link = null;
  /**
	 * getId
	 * Gets Integer
	 * @return Id
	 */
  public Integer getId() {
    return Id;
  }

	/**
	 * setId
	 * Sets Integer
	 * @param Id Integer
	 */
  public void setId(Integer Id) {
    this.Id = Id;
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
    sb.append("class SplitResultDocument {\n");
    sb.append("  Id: ").append(Id).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

