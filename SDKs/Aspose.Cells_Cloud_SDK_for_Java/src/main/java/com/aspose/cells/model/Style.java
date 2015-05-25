package com.aspose.cells.model;

import java.util.*;
import com.aspose.cells.model.Color;
import com.aspose.cells.model.Link;
import com.aspose.cells.model.Font;
public class Style {
  private Font Font = null;
  private String Name = null;
  private String CultureCustom = null;
  private String Custom = null;
  private Color BackgroundColor = null;
  private Color ForegroundColor = null;
  private Boolean IsFormulaHidden = null;
  private Boolean IsDateTime = null;
  private Boolean IsTextWrapped = null;
  private Boolean IsGradient = null;
  private Boolean IsLocked = null;
  private Boolean IsPercent = null;
  private Boolean ShrinkToFit = null;
  private Integer IndentLevel = null;
  private Integer Number = null;
  private Integer RotationAngle = null;
  private String Pattern = null;
  private String TextDirection = null;
  private String VerticalAlignment = null;
  private String HorizontalAlignment = null;
  private List<Border> BorderCollection = new ArrayList<Border>();
  private Link link = null;
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
	 * getName
	 * Gets String
	 * @return Name
	 */
  public String getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets String
	 * @param Name String
	 */
  public void setName(String Name) {
    this.Name = Name;
  }

  /**
	 * getCultureCustom
	 * Gets String
	 * @return CultureCustom
	 */
  public String getCultureCustom() {
    return CultureCustom;
  }

	/**
	 * setCultureCustom
	 * Sets String
	 * @param CultureCustom String
	 */
  public void setCultureCustom(String CultureCustom) {
    this.CultureCustom = CultureCustom;
  }

  /**
	 * getCustom
	 * Gets String
	 * @return Custom
	 */
  public String getCustom() {
    return Custom;
  }

	/**
	 * setCustom
	 * Sets String
	 * @param Custom String
	 */
  public void setCustom(String Custom) {
    this.Custom = Custom;
  }

  /**
	 * getBackgroundColor
	 * Gets Color
	 * @return BackgroundColor
	 */
  public Color getBackgroundColor() {
    return BackgroundColor;
  }

	/**
	 * setBackgroundColor
	 * Sets Color
	 * @param BackgroundColor Color
	 */
  public void setBackgroundColor(Color BackgroundColor) {
    this.BackgroundColor = BackgroundColor;
  }

  /**
	 * getForegroundColor
	 * Gets Color
	 * @return ForegroundColor
	 */
  public Color getForegroundColor() {
    return ForegroundColor;
  }

	/**
	 * setForegroundColor
	 * Sets Color
	 * @param ForegroundColor Color
	 */
  public void setForegroundColor(Color ForegroundColor) {
    this.ForegroundColor = ForegroundColor;
  }

  /**
	 * getIsFormulaHidden
	 * Gets Boolean
	 * @return IsFormulaHidden
	 */
  public Boolean getIsFormulaHidden() {
    return IsFormulaHidden;
  }

	/**
	 * setIsFormulaHidden
	 * Sets Boolean
	 * @param IsFormulaHidden Boolean
	 */
  public void setIsFormulaHidden(Boolean IsFormulaHidden) {
    this.IsFormulaHidden = IsFormulaHidden;
  }

  /**
	 * getIsDateTime
	 * Gets Boolean
	 * @return IsDateTime
	 */
  public Boolean getIsDateTime() {
    return IsDateTime;
  }

	/**
	 * setIsDateTime
	 * Sets Boolean
	 * @param IsDateTime Boolean
	 */
  public void setIsDateTime(Boolean IsDateTime) {
    this.IsDateTime = IsDateTime;
  }

  /**
	 * getIsTextWrapped
	 * Gets Boolean
	 * @return IsTextWrapped
	 */
  public Boolean getIsTextWrapped() {
    return IsTextWrapped;
  }

	/**
	 * setIsTextWrapped
	 * Sets Boolean
	 * @param IsTextWrapped Boolean
	 */
  public void setIsTextWrapped(Boolean IsTextWrapped) {
    this.IsTextWrapped = IsTextWrapped;
  }

  /**
	 * getIsGradient
	 * Gets Boolean
	 * @return IsGradient
	 */
  public Boolean getIsGradient() {
    return IsGradient;
  }

	/**
	 * setIsGradient
	 * Sets Boolean
	 * @param IsGradient Boolean
	 */
  public void setIsGradient(Boolean IsGradient) {
    this.IsGradient = IsGradient;
  }

  /**
	 * getIsLocked
	 * Gets Boolean
	 * @return IsLocked
	 */
  public Boolean getIsLocked() {
    return IsLocked;
  }

	/**
	 * setIsLocked
	 * Sets Boolean
	 * @param IsLocked Boolean
	 */
  public void setIsLocked(Boolean IsLocked) {
    this.IsLocked = IsLocked;
  }

  /**
	 * getIsPercent
	 * Gets Boolean
	 * @return IsPercent
	 */
  public Boolean getIsPercent() {
    return IsPercent;
  }

	/**
	 * setIsPercent
	 * Sets Boolean
	 * @param IsPercent Boolean
	 */
  public void setIsPercent(Boolean IsPercent) {
    this.IsPercent = IsPercent;
  }

  /**
	 * getShrinkToFit
	 * Gets Boolean
	 * @return ShrinkToFit
	 */
  public Boolean getShrinkToFit() {
    return ShrinkToFit;
  }

	/**
	 * setShrinkToFit
	 * Sets Boolean
	 * @param ShrinkToFit Boolean
	 */
  public void setShrinkToFit(Boolean ShrinkToFit) {
    this.ShrinkToFit = ShrinkToFit;
  }

  /**
	 * getIndentLevel
	 * Gets Integer
	 * @return IndentLevel
	 */
  public Integer getIndentLevel() {
    return IndentLevel;
  }

	/**
	 * setIndentLevel
	 * Sets Integer
	 * @param IndentLevel Integer
	 */
  public void setIndentLevel(Integer IndentLevel) {
    this.IndentLevel = IndentLevel;
  }

  /**
	 * getNumber
	 * Gets Integer
	 * @return Number
	 */
  public Integer getNumber() {
    return Number;
  }

	/**
	 * setNumber
	 * Sets Integer
	 * @param Number Integer
	 */
  public void setNumber(Integer Number) {
    this.Number = Number;
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
	 * getPattern
	 * Gets String
	 * @return Pattern
	 */
  public String getPattern() {
    return Pattern;
  }

	/**
	 * setPattern
	 * Sets String
	 * @param Pattern String
	 */
  public void setPattern(String Pattern) {
    this.Pattern = Pattern;
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
	 * getVerticalAlignment
	 * Gets String
	 * @return VerticalAlignment
	 */
  public String getVerticalAlignment() {
    return VerticalAlignment;
  }

	/**
	 * setVerticalAlignment
	 * Sets String
	 * @param VerticalAlignment String
	 */
  public void setVerticalAlignment(String VerticalAlignment) {
    this.VerticalAlignment = VerticalAlignment;
  }

  /**
	 * getHorizontalAlignment
	 * Gets String
	 * @return HorizontalAlignment
	 */
  public String getHorizontalAlignment() {
    return HorizontalAlignment;
  }

	/**
	 * setHorizontalAlignment
	 * Sets String
	 * @param HorizontalAlignment String
	 */
  public void setHorizontalAlignment(String HorizontalAlignment) {
    this.HorizontalAlignment = HorizontalAlignment;
  }

  /**
	 * getBorderCollection
	 * Gets List<Border>
	 * @return BorderCollection
	 */
  public List<Border> getBorderCollection() {
    return BorderCollection;
  }

	/**
	 * setBorderCollection
	 * Sets List<Border>
	 * @param BorderCollection List<Border>
	 */
  public void setBorderCollection(List<Border> BorderCollection) {
    this.BorderCollection = BorderCollection;
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
    sb.append("class Style {\n");
    sb.append("  Font: ").append(Font).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  CultureCustom: ").append(CultureCustom).append("\n");
    sb.append("  Custom: ").append(Custom).append("\n");
    sb.append("  BackgroundColor: ").append(BackgroundColor).append("\n");
    sb.append("  ForegroundColor: ").append(ForegroundColor).append("\n");
    sb.append("  IsFormulaHidden: ").append(IsFormulaHidden).append("\n");
    sb.append("  IsDateTime: ").append(IsDateTime).append("\n");
    sb.append("  IsTextWrapped: ").append(IsTextWrapped).append("\n");
    sb.append("  IsGradient: ").append(IsGradient).append("\n");
    sb.append("  IsLocked: ").append(IsLocked).append("\n");
    sb.append("  IsPercent: ").append(IsPercent).append("\n");
    sb.append("  ShrinkToFit: ").append(ShrinkToFit).append("\n");
    sb.append("  IndentLevel: ").append(IndentLevel).append("\n");
    sb.append("  Number: ").append(Number).append("\n");
    sb.append("  RotationAngle: ").append(RotationAngle).append("\n");
    sb.append("  Pattern: ").append(Pattern).append("\n");
    sb.append("  TextDirection: ").append(TextDirection).append("\n");
    sb.append("  VerticalAlignment: ").append(VerticalAlignment).append("\n");
    sb.append("  HorizontalAlignment: ").append(HorizontalAlignment).append("\n");
    sb.append("  BorderCollection: ").append(BorderCollection).append("\n");
    sb.append("  link: ").append(link).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

