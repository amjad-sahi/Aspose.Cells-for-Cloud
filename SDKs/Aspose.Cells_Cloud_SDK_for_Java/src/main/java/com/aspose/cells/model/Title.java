package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Area;
import com.aspose.cells.model.Link;
import com.aspose.cells.model.Line;
import com.aspose.cells.model.Font;
public class Title {
  private Boolean IsVisible = null;
  private String LinkedSource = null;
  private Integer RotationAngle = null;
  private String Text = null;
  private String TextDirection = null;
  private String TextHorizontalAlignment = null;
  private String TextVerticalAlignment = null;
  private Area Area = null;
  private Boolean AutoScaleFont = null;
  private String BackgroundMode = null;
  private Line Border = null;
  private Font Font = null;
  private Boolean IsAutomaticSize = null;
  private Boolean IsInnerMode = null;
  private Boolean Shadow = null;
  private List<LinkElement> ShapeProperties = new ArrayList<LinkElement>();
  private Integer Width = null;
  private Integer Height = null;
  private Integer X = null;
  private Integer Y = null;
  private Link link = null;
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
	 * getLinkedSource
	 * Gets String
	 * @return LinkedSource
	 */
  public String getLinkedSource() {
    return LinkedSource;
  }

	/**
	 * setLinkedSource
	 * Sets String
	 * @param LinkedSource String
	 */
  public void setLinkedSource(String LinkedSource) {
    this.LinkedSource = LinkedSource;
  }

  /**
	 * getRotationAngle
	 * Gets Integer
	 * @return RotationAngle
	 */
  public Integer getRotationAngle() {
    return RotationAngle;
  }

	/**
	 * setRotationAngle
	 * Sets Integer
	 * @param RotationAngle Integer
	 */
  public void setRotationAngle(Integer RotationAngle) {
    this.RotationAngle = RotationAngle;
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
	 * getTextDirection
	 * Gets String
	 * @return TextDirection
	 */
  public String getTextDirection() {
    return TextDirection;
  }

	/**
	 * setTextDirection
	 * Sets String
	 * @param TextDirection String
	 */
  public void setTextDirection(String TextDirection) {
    this.TextDirection = TextDirection;
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
	 * getArea
	 * Gets Area
	 * @return Area
	 */
  public Area getArea() {
    return Area;
  }

	/**
	 * setArea
	 * Sets Area
	 * @param Area Area
	 */
  public void setArea(Area Area) {
    this.Area = Area;
  }

  /**
	 * getAutoScaleFont
	 * Gets Boolean
	 * @return AutoScaleFont
	 */
  public Boolean getAutoScaleFont() {
    return AutoScaleFont;
  }

	/**
	 * setAutoScaleFont
	 * Sets Boolean
	 * @param AutoScaleFont Boolean
	 */
  public void setAutoScaleFont(Boolean AutoScaleFont) {
    this.AutoScaleFont = AutoScaleFont;
  }

  /**
	 * getBackgroundMode
	 * Gets String
	 * @return BackgroundMode
	 */
  public String getBackgroundMode() {
    return BackgroundMode;
  }

	/**
	 * setBackgroundMode
	 * Sets String
	 * @param BackgroundMode String
	 */
  public void setBackgroundMode(String BackgroundMode) {
    this.BackgroundMode = BackgroundMode;
  }

  /**
	 * getBorder
	 * Gets Line
	 * @return Border
	 */
  public Line getBorder() {
    return Border;
  }

	/**
	 * setBorder
	 * Sets Line
	 * @param Border Line
	 */
  public void setBorder(Line Border) {
    this.Border = Border;
  }

  /**
	 * getFont
	 * Gets Font
	 * @return Font
	 */
  public Font getFont() {
    return Font;
  }

	/**
	 * setFont
	 * Sets Font
	 * @param Font Font
	 */
  public void setFont(Font Font) {
    this.Font = Font;
  }

  /**
	 * getIsAutomaticSize
	 * Gets Boolean
	 * @return IsAutomaticSize
	 */
  public Boolean getIsAutomaticSize() {
    return IsAutomaticSize;
  }

	/**
	 * setIsAutomaticSize
	 * Sets Boolean
	 * @param IsAutomaticSize Boolean
	 */
  public void setIsAutomaticSize(Boolean IsAutomaticSize) {
    this.IsAutomaticSize = IsAutomaticSize;
  }

  /**
	 * getIsInnerMode
	 * Gets Boolean
	 * @return IsInnerMode
	 */
  public Boolean getIsInnerMode() {
    return IsInnerMode;
  }

	/**
	 * setIsInnerMode
	 * Sets Boolean
	 * @param IsInnerMode Boolean
	 */
  public void setIsInnerMode(Boolean IsInnerMode) {
    this.IsInnerMode = IsInnerMode;
  }

  /**
	 * getShadow
	 * Gets Boolean
	 * @return Shadow
	 */
  public Boolean getShadow() {
    return Shadow;
  }

	/**
	 * setShadow
	 * Sets Boolean
	 * @param Shadow Boolean
	 */
  public void setShadow(Boolean Shadow) {
    this.Shadow = Shadow;
  }

  /**
	 * getShapeProperties
	 * Gets List<LinkElement>
	 * @return ShapeProperties
	 */
  public List<LinkElement> getShapeProperties() {
    return ShapeProperties;
  }

	/**
	 * setShapeProperties
	 * Sets List<LinkElement>
	 * @param ShapeProperties List<LinkElement>
	 */
  public void setShapeProperties(List<LinkElement> ShapeProperties) {
    this.ShapeProperties = ShapeProperties;
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
	 * getX
	 * Gets Integer
	 * @return X
	 */
  public Integer getX() {
    return X;
  }

	/**
	 * setX
	 * Sets Integer
	 * @param X Integer
	 */
  public void setX(Integer X) {
    this.X = X;
  }

  /**
	 * getY
	 * Gets Integer
	 * @return Y
	 */
  public Integer getY() {
    return Y;
  }

	/**
	 * setY
	 * Sets Integer
	 * @param Y Integer
	 */
  public void setY(Integer Y) {
    this.Y = Y;
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
    sb.append("class Title {\n");
    sb.append("  IsVisible: ").append(IsVisible).append("\n");
    sb.append("  LinkedSource: ").append(LinkedSource).append("\n");
    sb.append("  RotationAngle: ").append(RotationAngle).append("\n");
    sb.append("  Text: ").append(Text).append("\n");
    sb.append("  TextDirection: ").append(TextDirection).append("\n");
    sb.append("  TextHorizontalAlignment: ").append(TextHorizontalAlignment).append("\n");
    sb.append("  TextVerticalAlignment: ").append(TextVerticalAlignment).append("\n");
    sb.append("  Area: ").append(Area).append("\n");
    sb.append("  AutoScaleFont: ").append(AutoScaleFont).append("\n");
    sb.append("  BackgroundMode: ").append(BackgroundMode).append("\n");
    sb.append("  Border: ").append(Border).append("\n");
    sb.append("  Font: ").append(Font).append("\n");
    sb.append("  IsAutomaticSize: ").append(IsAutomaticSize).append("\n");
    sb.append("  IsInnerMode: ").append(IsInnerMode).append("\n");
    sb.append("  Shadow: ").append(Shadow).append("\n");
    sb.append("  ShapeProperties: ").append(ShapeProperties).append("\n");
    sb.append("  Width: ").append(Width).append("\n");
    sb.append("  Height: ").append(Height).append("\n");
    sb.append("  X: ").append(X).append("\n");
    sb.append("  Y: ").append(Y).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

