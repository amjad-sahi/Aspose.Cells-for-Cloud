package com.aspose.cells.model;

import com.aspose.cells.model.Link;
public class Name {
  private String Comment = null;
  private Integer WorksheetIndex = null;
  private Boolean IsReferred = null;
  private Boolean IsVisible = null;
  private String R1C1RefersTo = null;
  private String RefersTo = null;
  private String Text = null;
  private Link link = null;
  /**
	 * getComment
	 * Gets String
	 * @return Comment
	 */
  public String getComment() {
    return Comment;
  }

	/**
	 * setComment
	 * Sets String
	 * @param Comment String
	 */
  public void setComment(String Comment) {
    this.Comment = Comment;
  }

  /**
	 * getWorksheetIndex
	 * Gets Integer
	 * @return WorksheetIndex
	 */
  public Integer getWorksheetIndex() {
    return WorksheetIndex;
  }

	/**
	 * setWorksheetIndex
	 * Sets Integer
	 * @param WorksheetIndex Integer
	 */
  public void setWorksheetIndex(Integer WorksheetIndex) {
    this.WorksheetIndex = WorksheetIndex;
  }

  /**
	 * getIsReferred
	 * Gets Boolean
	 * @return IsReferred
	 */
  public Boolean getIsReferred() {
    return IsReferred;
  }

	/**
	 * setIsReferred
	 * Sets Boolean
	 * @param IsReferred Boolean
	 */
  public void setIsReferred(Boolean IsReferred) {
    this.IsReferred = IsReferred;
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
	 * getR1C1RefersTo
	 * Gets String
	 * @return R1C1RefersTo
	 */
  public String getR1C1RefersTo() {
    return R1C1RefersTo;
  }

	/**
	 * setR1C1RefersTo
	 * Sets String
	 * @param R1C1RefersTo String
	 */
  public void setR1C1RefersTo(String R1C1RefersTo) {
    this.R1C1RefersTo = R1C1RefersTo;
  }

  /**
	 * getRefersTo
	 * Gets String
	 * @return RefersTo
	 */
  public String getRefersTo() {
    return RefersTo;
  }

	/**
	 * setRefersTo
	 * Sets String
	 * @param RefersTo String
	 */
  public void setRefersTo(String RefersTo) {
    this.RefersTo = RefersTo;
  }

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
    sb.append("class Name {\n");
    sb.append("  Comment: ").append(Comment).append("\n");
    sb.append("  WorksheetIndex: ").append(WorksheetIndex).append("\n");
    sb.append("  IsReferred: ").append(IsReferred).append("\n");
    sb.append("  IsVisible: ").append(IsVisible).append("\n");
    sb.append("  R1C1RefersTo: ").append(R1C1RefersTo).append("\n");
    sb.append("  RefersTo: ").append(RefersTo).append("\n");
    sb.append("  Text: ").append(Text).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

