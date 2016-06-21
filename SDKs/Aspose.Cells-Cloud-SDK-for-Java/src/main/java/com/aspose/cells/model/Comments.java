package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class Comments {
  private List<LinkElement> CommentList = new ArrayList<LinkElement>();
  private Link link = null;
  /**
	 * getCommentList
	 * Gets List<LinkElement>
	 * @return CommentList
	 */
  public List<LinkElement> getCommentList() {
    return CommentList;
  }

	/**
	 * setCommentList
	 * Sets List<LinkElement>
	 * @param CommentList List<LinkElement>
	 */
  public void setCommentList(List<LinkElement> CommentList) {
    this.CommentList = CommentList;
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
    sb.append("class Comments {\n");
    sb.append("  CommentList: ").append(CommentList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

