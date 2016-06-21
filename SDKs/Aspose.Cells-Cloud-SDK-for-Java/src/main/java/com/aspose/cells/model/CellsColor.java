package com.aspose.cells.model;

import com.aspose.cells.model.Color;
import com.aspose.cells.model.ThemeColor;
public class CellsColor {
  private Color Color = null;
  private Integer ColorIndex = null;
  private Boolean IsShapeColor = null;
  private ThemeColor ThemeColor = null;
  private String Type = null;
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
	 * getColorIndex
	 * Gets Integer
	 * @return ColorIndex
	 */
  public Integer getColorIndex() {
    return ColorIndex;
  }

	/**
	 * setColorIndex
	 * Sets Integer
	 * @param ColorIndex Integer
	 */
  public void setColorIndex(Integer ColorIndex) {
    this.ColorIndex = ColorIndex;
  }

  /**
	 * getIsShapeColor
	 * Gets Boolean
	 * @return IsShapeColor
	 */
  public Boolean getIsShapeColor() {
    return IsShapeColor;
  }

	/**
	 * setIsShapeColor
	 * Sets Boolean
	 * @param IsShapeColor Boolean
	 */
  public void setIsShapeColor(Boolean IsShapeColor) {
    this.IsShapeColor = IsShapeColor;
  }

  /**
	 * getThemeColor
	 * Gets ThemeColor
	 * @return ThemeColor
	 */
  public ThemeColor getThemeColor() {
    return ThemeColor;
  }

	/**
	 * setThemeColor
	 * Sets ThemeColor
	 * @param ThemeColor ThemeColor
	 */
  public void setThemeColor(ThemeColor ThemeColor) {
    this.ThemeColor = ThemeColor;
  }

  /**
	 * getType
	 * Gets String
	 * @return Type
	 */
  public String getType() {
    return Type;
  }

	/**
	 * setType
	 * Sets String
	 * @param Type String
	 */
  public void setType(String Type) {
    this.Type = Type;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CellsColor {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  ColorIndex: ").append(ColorIndex).append("\n");
    sb.append("  IsShapeColor: ").append(IsShapeColor).append("\n");
    sb.append("  ThemeColor: ").append(ThemeColor).append("\n");
    sb.append("  Type: ").append(Type).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

