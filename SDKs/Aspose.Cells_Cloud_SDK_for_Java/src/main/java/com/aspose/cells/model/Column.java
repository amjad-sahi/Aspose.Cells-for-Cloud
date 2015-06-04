package com.aspose.cells.model;

import com.aspose.cells.model.Link;
import com.aspose.cells.model.LinkElement;
public class Column {
  private Integer GroupLevel = null;
  private Integer Index = null;
  private Boolean IsHidden = null;
  private Double Width = null;
  private LinkElement Style = null;
  private Link link = null;
  /**
	 * getGroupLevel
	 * Gets Integer
	 * @return GroupLevel
	 */
  public Integer getGroupLevel() {
    return GroupLevel;
  }

	/**
	 * setGroupLevel
	 * Sets Integer
	 * @param GroupLevel Integer
	 */
  public void setGroupLevel(Integer GroupLevel) {
    this.GroupLevel = GroupLevel;
  }

  /**
	 * getIndex
	 * Gets Integer
	 * @return Index
	 */
  public Integer getIndex() {
    return Index;
  }

	/**
	 * setIndex
	 * Sets Integer
	 * @param Index Integer
	 */
  public void setIndex(Integer Index) {
    this.Index = Index;
  }

  /**
	 * getIsHidden
	 * Gets Boolean
	 * @return IsHidden
	 */
  public Boolean getIsHidden() {
    return IsHidden;
  }

	/**
	 * setIsHidden
	 * Sets Boolean
	 * @param IsHidden Boolean
	 */
  public void setIsHidden(Boolean IsHidden) {
    this.IsHidden = IsHidden;
  }

  /**
	 * getWidth
	 * Gets Double
	 * @return Width
	 */
  public Double getWidth() {
    return Width;
  }

	/**
	 * setWidth
	 * Sets Double
	 * @param Width Double
	 */
  public void setWidth(Double Width) {
    this.Width = Width;
  }

  /**
	 * getStyle
	 * Gets LinkElement
	 * @return Style
	 */
  public LinkElement getStyle() {
    return Style;
  }

	/**
	 * setStyle
	 * Sets LinkElement
	 * @param Style LinkElement
	 */
  public void setStyle(LinkElement Style) {
    this.Style = Style;
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
    sb.append("class Column {\n");
    sb.append("  GroupLevel: ").append(GroupLevel).append("\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("  IsHidden: ").append(IsHidden).append("\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  Style: ").append(Style).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

