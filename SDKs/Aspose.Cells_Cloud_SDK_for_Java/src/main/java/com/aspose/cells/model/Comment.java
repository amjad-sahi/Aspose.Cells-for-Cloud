package com.aspose.cells.model;

import com.aspose.cells.model.Link;
public class Comment {
  private String CellName = null;
  private String Author = null;
  private String HtmlNote = null;
  private String Note = null;
  private Boolean AutoSize = null;
  private Boolean IsVisible = null;
  private Integer Width = null;
  private Integer Height = null;
  private String TextHorizontalAlignment = null;
  private String TextOrientationType = null;
  private String TextVerticalAlignment = null;
  private Link link = null;
  /**
	 * getCellName
	 * Gets String
	 * @return CellName
	 */
  public String getCellName() {
    return CellName;
  }

	/**
	 * setCellName
	 * Sets String
	 * @param CellName String
	 */
  public void setCellName(String CellName) {
    this.CellName = CellName;
  }

  /**
	 * getAuthor
	 * Gets String
	 * @return Author
	 */
  public String getAuthor() {
    return Author;
  }

	/**
	 * setAuthor
	 * Sets String
	 * @param Author String
	 */
  public void setAuthor(String Author) {
    this.Author = Author;
  }

  /**
	 * getHtmlNote
	 * Gets String
	 * @return HtmlNote
	 */
  public String getHtmlNote() {
    return HtmlNote;
  }

	/**
	 * setHtmlNote
	 * Sets String
	 * @param HtmlNote String
	 */
  public void setHtmlNote(String HtmlNote) {
    this.HtmlNote = HtmlNote;
  }

  /**
	 * getNote
	 * Gets String
	 * @return Note
	 */
  public String getNote() {
    return Note;
  }

	/**
	 * setNote
	 * Sets String
	 * @param Note String
	 */
  public void setNote(String Note) {
    this.Note = Note;
  }

  /**
	 * getAutoSize
	 * Gets Boolean
	 * @return AutoSize
	 */
  public Boolean getAutoSize() {
    return AutoSize;
  }

	/**
	 * setAutoSize
	 * Sets Boolean
	 * @param AutoSize Boolean
	 */
  public void setAutoSize(Boolean AutoSize) {
    this.AutoSize = AutoSize;
  }

  /**
	 * getIsVisible
	 * Gets Boolean
	 * @return IsVisible
	 */
  public Boolean getIsVisible() {
    return IsVisible;
  }

	/**
	 * setIsVisible
	 * Sets Boolean
	 * @param IsVisible Boolean
	 */
  public void setIsVisible(Boolean IsVisible) {
    this.IsVisible = IsVisible;
  }

  /**
	 * getWidth
	 * Gets Integer
	 * @return Width
	 */
  public Integer getWidth() {
    return Width;
  }

	/**
	 * setWidth
	 * Sets Integer
	 * @param Width Integer
	 */
  public void setWidth(Integer Width) {
    this.Width = Width;
  }

  /**
	 * getHeight
	 * Gets Integer
	 * @return Height
	 */
  public Integer getHeight() {
    return Height;
  }

	/**
	 * setHeight
	 * Sets Integer
	 * @param Height Integer
	 */
  public void setHeight(Integer Height) {
    this.Height = Height;
  }

  /**
	 * getTextHorizontalAlignment
	 * Gets String
	 * @return TextHorizontalAlignment
	 */
  public String getTextHorizontalAlignment() {
    return TextHorizontalAlignment;
  }

	/**
	 * setTextHorizontalAlignment
	 * Sets String
	 * @param TextHorizontalAlignment String
	 */
  public void setTextHorizontalAlignment(String TextHorizontalAlignment) {
    this.TextHorizontalAlignment = TextHorizontalAlignment;
  }

  /**
	 * getTextOrientationType
	 * Gets String
	 * @return TextOrientationType
	 */
  public String getTextOrientationType() {
    return TextOrientationType;
  }

	/**
	 * setTextOrientationType
	 * Sets String
	 * @param TextOrientationType String
	 */
  public void setTextOrientationType(String TextOrientationType) {
    this.TextOrientationType = TextOrientationType;
  }

  /**
	 * getTextVerticalAlignment
	 * Gets String
	 * @return TextVerticalAlignment
	 */
  public String getTextVerticalAlignment() {
    return TextVerticalAlignment;
  }

	/**
	 * setTextVerticalAlignment
	 * Sets String
	 * @param TextVerticalAlignment String
	 */
  public void setTextVerticalAlignment(String TextVerticalAlignment) {
    this.TextVerticalAlignment = TextVerticalAlignment;
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
    sb.append("class Comment {\n");
    sb.append("  CellName: ").append(CellName).append("\n");
    sb.append("  Author: ").append(Author).append("\n");
    sb.append("  HtmlNote: ").append(HtmlNote).append("\n");
    sb.append("  Note: ").append(Note).append("\n");
    sb.append("  AutoSize: ").append(AutoSize).append("\n");
    sb.append("  IsVisible: ").append(IsVisible).append("\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("  TextHorizontalAlignment: ").append(TextHorizontalAlignment).append("\n");
    sb.append("  TextOrientationType: ").append(TextOrientationType).append("\n");
    sb.append("  TextVerticalAlignment: ").append(TextVerticalAlignment).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

