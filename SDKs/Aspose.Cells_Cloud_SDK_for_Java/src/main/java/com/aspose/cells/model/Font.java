package com.aspose.cells.model;

import com.aspose.cells.model.Color;
public class Font {
  private Color Color = null;
  private Double DoubleSize = null;
  private Boolean IsBold = null;
  private Boolean IsItalic = null;
  private Boolean IsStrikeout = null;
  private Boolean IsSubscript = null;
  private Boolean IsSuperscript = null;
  private String Name = null;
  private Integer Size = null;
  private String Underline = null;
  /**
	 * getColor
	 * Gets Color
	 * @return Color
	 */
  public Color getColor() {
    return Color;
  }

	/**
	 * setColor
	 * Sets Color
	 * @param Color Color
	 */
  public void setColor(Color Color) {
    this.Color = Color;
  }

  /**
	 * getDoubleSize
	 * Gets Double
	 * @return DoubleSize
	 */
  public Double getDoubleSize() {
    return DoubleSize;
  }

	/**
	 * setDoubleSize
	 * Sets Double
	 * @param DoubleSize Double
	 */
  public void setDoubleSize(Double DoubleSize) {
    this.DoubleSize = DoubleSize;
  }

  /**
	 * getIsBold
	 * Gets Boolean
	 * @return IsBold
	 */
  public Boolean getIsBold() {
    return IsBold;
  }

	/**
	 * setIsBold
	 * Sets Boolean
	 * @param IsBold Boolean
	 */
  public void setIsBold(Boolean IsBold) {
    this.IsBold = IsBold;
  }

  /**
	 * getIsItalic
	 * Gets Boolean
	 * @return IsItalic
	 */
  public Boolean getIsItalic() {
    return IsItalic;
  }

	/**
	 * setIsItalic
	 * Sets Boolean
	 * @param IsItalic Boolean
	 */
  public void setIsItalic(Boolean IsItalic) {
    this.IsItalic = IsItalic;
  }

  /**
	 * getIsStrikeout
	 * Gets Boolean
	 * @return IsStrikeout
	 */
  public Boolean getIsStrikeout() {
    return IsStrikeout;
  }

	/**
	 * setIsStrikeout
	 * Sets Boolean
	 * @param IsStrikeout Boolean
	 */
  public void setIsStrikeout(Boolean IsStrikeout) {
    this.IsStrikeout = IsStrikeout;
  }

  /**
	 * getIsSubscript
	 * Gets Boolean
	 * @return IsSubscript
	 */
  public Boolean getIsSubscript() {
    return IsSubscript;
  }

	/**
	 * setIsSubscript
	 * Sets Boolean
	 * @param IsSubscript Boolean
	 */
  public void setIsSubscript(Boolean IsSubscript) {
    this.IsSubscript = IsSubscript;
  }

  /**
	 * getIsSuperscript
	 * Gets Boolean
	 * @return IsSuperscript
	 */
  public Boolean getIsSuperscript() {
    return IsSuperscript;
  }

	/**
	 * setIsSuperscript
	 * Sets Boolean
	 * @param IsSuperscript Boolean
	 */
  public void setIsSuperscript(Boolean IsSuperscript) {
    this.IsSuperscript = IsSuperscript;
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
	 * getSize
	 * Gets Integer
	 * @return Size
	 */
  public Integer getSize() {
    return Size;
  }

	/**
	 * setSize
	 * Sets Integer
	 * @param Size Integer
	 */
  public void setSize(Integer Size) {
    this.Size = Size;
  }

  /**
	 * getUnderline
	 * Gets String
	 * @return Underline
	 */
  public String getUnderline() {
    return Underline;
  }

	/**
	 * setUnderline
	 * Sets String
	 * @param Underline String
	 */
  public void setUnderline(String Underline) {
    this.Underline = Underline;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Font {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  DoubleSize: ").append(DoubleSize).append("\n");
    sb.append("  IsBold: ").append(IsBold).append("\n");
    sb.append("  IsItalic: ").append(IsItalic).append("\n");
    sb.append("  IsStrikeout: ").append(IsStrikeout).append("\n");
    sb.append("  IsSubscript: ").append(IsSubscript).append("\n");
    sb.append("  IsSuperscript: ").append(IsSuperscript).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Size: ").append(Size).append("\n");
    sb.append("  Underline: ").append(Underline).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

