package com.aspose.cells.model;

import com.aspose.cells.model.Color;
public class GradientFillStop {
  private Color Color = null;
  private Double Position = null;
  private Double Transparency = null;
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
	 * getPosition
	 * Gets Double
	 * @return Position
	 */
  public Double getPosition() {
    return Position;
  }

	/**
	 * setPosition
	 * Sets Double
	 * @param Position Double
	 */
  public void setPosition(Double Position) {
    this.Position = Position;
  }

  /**
	 * getTransparency
	 * Gets Double
	 * @return Transparency
	 */
  public Double getTransparency() {
    return Transparency;
  }

	/**
	 * setTransparency
	 * Sets Double
	 * @param Transparency Double
	 */
  public void setTransparency(Double Transparency) {
    this.Transparency = Transparency;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GradientFillStop {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  Position: ").append(Position).append("\n");
    sb.append("  Transparency: ").append(Transparency).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

