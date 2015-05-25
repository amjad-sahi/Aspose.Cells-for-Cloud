package com.aspose.cells.model;

import com.aspose.cells.model.Color;
import com.aspose.cells.model.CellsColor;
public class SolidFill {
  private Color Color = null;
  private CellsColor CellsColor = null;
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
	 * getCellsColor
	 * Gets CellsColor
	 * @return CellsColor
	 */
  public CellsColor getCellsColor() {
    return CellsColor;
  }

	/**
	 * setCellsColor
	 * Sets CellsColor
	 * @param CellsColor CellsColor
	 */
  public void setCellsColor(CellsColor CellsColor) {
    this.CellsColor = CellsColor;
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
    sb.append("class SolidFill {\n");
    sb.append("  Color: ").append(Color).append("\n");
    sb.append("  CellsColor: ").append(CellsColor).append("\n");
    sb.append("  Transparency: ").append(Transparency).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

