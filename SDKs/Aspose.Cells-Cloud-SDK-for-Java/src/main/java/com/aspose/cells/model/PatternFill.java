package com.aspose.cells.model;

import com.aspose.cells.model.Color;
import com.aspose.cells.model.CellsColor;
public class PatternFill {
  private String Pattern = null;
  private CellsColor BackgroundCellsColor = null;
  private CellsColor ForegroundCellsColor = null;
  private Color ForegroundColor = null;
  private Color BackgroundColor = null;
  private Double BackTransparency = null;
  private Double ForeTransparency = null;
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
	 * getBackgroundCellsColor
	 * Gets CellsColor
	 * @return BackgroundCellsColor
	 */
  public CellsColor getBackgroundCellsColor() {
    return BackgroundCellsColor;
  }

	/**
	 * setBackgroundCellsColor
	 * Sets CellsColor
	 * @param BackgroundCellsColor CellsColor
	 */
  public void setBackgroundCellsColor(CellsColor BackgroundCellsColor) {
    this.BackgroundCellsColor = BackgroundCellsColor;
  }

  /**
	 * getForegroundCellsColor
	 * Gets CellsColor
	 * @return ForegroundCellsColor
	 */
  public CellsColor getForegroundCellsColor() {
    return ForegroundCellsColor;
  }

	/**
	 * setForegroundCellsColor
	 * Sets CellsColor
	 * @param ForegroundCellsColor CellsColor
	 */
  public void setForegroundCellsColor(CellsColor ForegroundCellsColor) {
    this.ForegroundCellsColor = ForegroundCellsColor;
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
	 * getBackTransparency
	 * Gets Double
	 * @return BackTransparency
	 */
  public Double getBackTransparency() {
    return BackTransparency;
  }

	/**
	 * setBackTransparency
	 * Sets Double
	 * @param BackTransparency Double
	 */
  public void setBackTransparency(Double BackTransparency) {
    this.BackTransparency = BackTransparency;
  }

  /**
	 * getForeTransparency
	 * Gets Double
	 * @return ForeTransparency
	 */
  public Double getForeTransparency() {
    return ForeTransparency;
  }

	/**
	 * setForeTransparency
	 * Sets Double
	 * @param ForeTransparency Double
	 */
  public void setForeTransparency(Double ForeTransparency) {
    this.ForeTransparency = ForeTransparency;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PatternFill {\n");
    sb.append("  Pattern: ").append(Pattern).append("\n");
    sb.append("  BackgroundCellsColor: ").append(BackgroundCellsColor).append("\n");
    sb.append("  ForegroundCellsColor: ").append(ForegroundCellsColor).append("\n");
    sb.append("  ForegroundColor: ").append(ForegroundColor).append("\n");
    sb.append("  BackgroundColor: ").append(BackgroundColor).append("\n");
    sb.append("  BackTransparency: ").append(BackTransparency).append("\n");
    sb.append("  ForeTransparency: ").append(ForeTransparency).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

