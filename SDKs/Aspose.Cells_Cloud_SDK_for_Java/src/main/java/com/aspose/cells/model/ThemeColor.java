package com.aspose.cells.model;

public class ThemeColor {
  private String ColorType = null;
  private Double Tint = null;
  /**
	 * getColorType
	 * Gets String
	 * @return ColorType
	 */
  public String getColorType() {
    return ColorType;
  }

	/**
	 * setColorType
	 * Sets String
	 * @param ColorType String
	 */
  public void setColorType(String ColorType) {
    this.ColorType = ColorType;
  }

  /**
	 * getTint
	 * Gets Double
	 * @return Tint
	 */
  public Double getTint() {
    return Tint;
  }

	/**
	 * setTint
	 * Sets Double
	 * @param Tint Double
	 */
  public void setTint(Double Tint) {
    this.Tint = Tint;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ThemeColor {\n");
    sb.append("  ColorType: ").append(ColorType).append("\n");
    sb.append("  Tint: ").append(Tint).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

