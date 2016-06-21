package com.aspose.cells.model;

import com.aspose.cells.model.Color;
import com.aspose.cells.model.FillFormat;
public class Area {
  private Color BackgroundColor = null;
  private FillFormat FillFormat = null;
  private Color ForegroundColor = null;
  private String Formatting = null;
  private Boolean InvertIfNegative = null;
  private Double Transparency = null;
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
	 * getFillFormat
	 * Gets FillFormat
	 * @return FillFormat
	 */
  public FillFormat getFillFormat() {
    return FillFormat;
  }

	/**
	 * setFillFormat
	 * Sets FillFormat
	 * @param FillFormat FillFormat
	 */
  public void setFillFormat(FillFormat FillFormat) {
    this.FillFormat = FillFormat;
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
	 * getFormatting
	 * Gets String
	 * @return Formatting
	 */
  public String getFormatting() {
    return Formatting;
  }

	/**
	 * setFormatting
	 * Sets String
	 * @param Formatting String
	 */
  public void setFormatting(String Formatting) {
    this.Formatting = Formatting;
  }

  /**
	 * getInvertIfNegative
	 * Gets Boolean
	 * @return InvertIfNegative
	 */
  public Boolean getInvertIfNegative() {
    return InvertIfNegative;
  }

	/**
	 * setInvertIfNegative
	 * Sets Boolean
	 * @param InvertIfNegative Boolean
	 */
  public void setInvertIfNegative(Boolean InvertIfNegative) {
    this.InvertIfNegative = InvertIfNegative;
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
    sb.append("class Area {\n");
    sb.append("  BackgroundColor: ").append(BackgroundColor).append("\n");
    sb.append("  FillFormat: ").append(FillFormat).append("\n");
    sb.append("  ForegroundColor: ").append(ForegroundColor).append("\n");
    sb.append("  Formatting: ").append(Formatting).append("\n");
    sb.append("  InvertIfNegative: ").append(InvertIfNegative).append("\n");
    sb.append("  Transparency: ").append(Transparency).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

