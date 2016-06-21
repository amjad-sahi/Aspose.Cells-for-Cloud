package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Link;
public class SaveResult {
  private Link SourceDocument = null;
  private Link DestDocument = null;
  private List<Link> AdditionalItems = new ArrayList<Link>();
  /**
	 * getSourceDocument
	 * Gets Link
	 * @return SourceDocument
	 */
  public Link getSourceDocument() {
    return SourceDocument;
  }

	/**
	 * setSourceDocument
	 * Sets Link
	 * @param SourceDocument Link
	 */
  public void setSourceDocument(Link SourceDocument) {
    this.SourceDocument = SourceDocument;
  }

  /**
	 * getDestDocument
	 * Gets Link
	 * @return DestDocument
	 */
  public Link getDestDocument() {
    return DestDocument;
  }

	/**
	 * setDestDocument
	 * Sets Link
	 * @param DestDocument Link
	 */
  public void setDestDocument(Link DestDocument) {
    this.DestDocument = DestDocument;
  }

  /**
	 * getAdditionalItems
	 * Gets List<Link>
	 * @return AdditionalItems
	 */
  public List<Link> getAdditionalItems() {
    return AdditionalItems;
  }

	/**
	 * setAdditionalItems
	 * Sets List<Link>
	 * @param AdditionalItems List<Link>
	 */
  public void setAdditionalItems(List<Link> AdditionalItems) {
    this.AdditionalItems = AdditionalItems;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SaveResult {\n");
    sb.append("  SourceDocument: ").append(SourceDocument).append("\n");
    sb.append("  DestDocument: ").append(DestDocument).append("\n");
    sb.append("  AdditionalItems: ").append(AdditionalItems).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

