package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class CellsDocumentProperties {
  private List<CellsDocumentProperty> DocumentPropertyList = new ArrayList<CellsDocumentProperty>();
  private Link link = null;
  /**
	 * getDocumentPropertyList
	 * Gets List<CellsDocumentProperty>
	 * @return DocumentPropertyList
	 */
  public List<CellsDocumentProperty> getDocumentPropertyList() {
    return DocumentPropertyList;
  }

	/**
	 * setDocumentPropertyList
	 * Sets List<CellsDocumentProperty>
	 * @param DocumentPropertyList List<CellsDocumentProperty>
	 */
  public void setDocumentPropertyList(List<CellsDocumentProperty> DocumentPropertyList) {
    this.DocumentPropertyList = DocumentPropertyList;
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
    sb.append("class CellsDocumentProperties {\n");
    sb.append("  DocumentPropertyList: ").append(DocumentPropertyList).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

