package com.aspose.cells.model;

import com.aspose.cells.model.Link;
import com.aspose.cells.model.LinkElement;
public class Row {
  private Integer GroupLevel = null;
  private Double Height = null;
  private Integer Index = null;
  private Boolean IsBlank = null;
  private Boolean IsHeightMatched = null;
  private Boolean IsHidden = null;
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
	 * getHeight
	 * Gets Double
	 * @return Height
	 */
  public Double getHeight() {
    return Height;
  }

	/**
	 * setHeight
	 * Sets Double
	 * @param Height Double
	 */
  public void setHeight(Double Height) {
    this.Height = Height;
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
	 * getIsBlank
	 * Gets Boolean
	 * @return IsBlank
	 */
  public Boolean getIsBlank() {
    return IsBlank;
  }

	/**
	 * setIsBlank
	 * Sets Boolean
	 * @param IsBlank Boolean
	 */
  public void setIsBlank(Boolean IsBlank) {
    this.IsBlank = IsBlank;
  }

  /**
	 * getIsHeightMatched
	 * Gets Boolean
	 * @return IsHeightMatched
	 */
  public Boolean getIsHeightMatched() {
    return IsHeightMatched;
  }

	/**
	 * setIsHeightMatched
	 * Sets Boolean
	 * @param IsHeightMatched Boolean
	 */
  public void setIsHeightMatched(Boolean IsHeightMatched) {
    this.IsHeightMatched = IsHeightMatched;
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
    sb.append("class Row {\n");
    sb.append("  GroupLevel: ").append(GroupLevel).append("\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("  IsBlank: ").append(IsBlank).append("\n");
    sb.append("  IsHeightMatched: ").append(IsHeightMatched).append("\n");
    sb.append("  IsHidden: ").append(IsHidden).append("\n");
    sb.append("  Style: ").append(Style).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

