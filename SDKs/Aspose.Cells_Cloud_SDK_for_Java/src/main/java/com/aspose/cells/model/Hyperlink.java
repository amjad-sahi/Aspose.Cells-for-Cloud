package com.aspose.cells.model;

import com.aspose.cells.model.Link;
import com.aspose.cells.model.CellArea;
public class Hyperlink {
  private String Address = null;
  private CellArea Area = null;
  private String ScreenTip = null;
  private String TextToDisplay = null;
  private Link link = null;
  /**
	 * getAddress
	 * Gets String
	 * @return Address
	 */
  public String getAddress() {
    return Address;
  }

	/**
	 * setAddress
	 * Sets String
	 * @param Address String
	 */
  public void setAddress(String Address) {
    this.Address = Address;
  }

  /**
	 * getArea
	 * Gets CellArea
	 * @return Area
	 */
  public CellArea getArea() {
    return Area;
  }

	/**
	 * setArea
	 * Sets CellArea
	 * @param Area CellArea
	 */
  public void setArea(CellArea Area) {
    this.Area = Area;
  }

  /**
	 * getScreenTip
	 * Gets String
	 * @return ScreenTip
	 */
  public String getScreenTip() {
    return ScreenTip;
  }

	/**
	 * setScreenTip
	 * Sets String
	 * @param ScreenTip String
	 */
  public void setScreenTip(String ScreenTip) {
    this.ScreenTip = ScreenTip;
  }

  /**
	 * getTextToDisplay
	 * Gets String
	 * @return TextToDisplay
	 */
  public String getTextToDisplay() {
    return TextToDisplay;
  }

	/**
	 * setTextToDisplay
	 * Sets String
	 * @param TextToDisplay String
	 */
  public void setTextToDisplay(String TextToDisplay) {
    this.TextToDisplay = TextToDisplay;
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
    sb.append("class Hyperlink {\n");
    sb.append("  Address: ").append(Address).append("\n");
    sb.append("  Area: ").append(Area).append("\n");
    sb.append("  ScreenTip: ").append(ScreenTip).append("\n");
    sb.append("  TextToDisplay: ").append(TextToDisplay).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

