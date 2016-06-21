package com.aspose.cells.model;

import com.aspose.cells.model.Color;
public class Border {
  private String LineStyle = null;
  private Color Color = null;
  private String BorderType = null;
  /**
	 * getLineStyle
	 * Gets String
	 * @return LineStyle
	 */
  public String getLineStyle() {
    return LineStyle;
  }

	/**
	 * setLineStyle
	 * Sets String
	 * @param LineStyle String
	 */
  public void setLineStyle(String LineStyle) {
    this.LineStyle = LineStyle;
  }

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
	 * getBorderType
	 * Gets String
	 * @return BorderType
	 */
  public String getBorderType() {
    return BorderType;
  }

	/**
	 * setBorderType
	 * Sets String
	 * @param BorderType String
	 */
  public void setBorderType(String BorderType) {
    this.BorderType = BorderType;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Border {\n");
    sb.append("  LineStyle: ").append(LineStyle).append("\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  BorderType: ").append(BorderType).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

