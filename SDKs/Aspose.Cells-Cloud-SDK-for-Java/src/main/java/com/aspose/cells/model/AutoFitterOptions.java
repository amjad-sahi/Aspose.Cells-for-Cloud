package com.aspose.cells.model;

public class AutoFitterOptions {
  private Boolean AutoFitMergedCells = null;
  private Boolean IgnoreHidden = null;
  private Boolean OnlyAuto = null;
  /**
	 * getAutoFitMergedCells
	 * Gets Boolean
	 * @return AutoFitMergedCells
	 */
  public Boolean getAutoFitMergedCells() {
    return AutoFitMergedCells;
  }

	/**
	 * setAutoFitMergedCells
	 * Sets Boolean
	 * @param AutoFitMergedCells Boolean
	 */
  public void setAutoFitMergedCells(Boolean AutoFitMergedCells) {
    this.AutoFitMergedCells = AutoFitMergedCells;
  }

  /**
	 * getIgnoreHidden
	 * Gets Boolean
	 * @return IgnoreHidden
	 */
  public Boolean getIgnoreHidden() {
    return IgnoreHidden;
  }

	/**
	 * setIgnoreHidden
	 * Sets Boolean
	 * @param IgnoreHidden Boolean
	 */
  public void setIgnoreHidden(Boolean IgnoreHidden) {
    this.IgnoreHidden = IgnoreHidden;
  }

  /**
	 * getOnlyAuto
	 * Gets Boolean
	 * @return OnlyAuto
	 */
  public Boolean getOnlyAuto() {
    return OnlyAuto;
  }

	/**
	 * setOnlyAuto
	 * Sets Boolean
	 * @param OnlyAuto Boolean
	 */
  public void setOnlyAuto(Boolean OnlyAuto) {
    this.OnlyAuto = OnlyAuto;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AutoFitterOptions {\n");
    sb.append("  AutoFitMergedCells: ").append(AutoFitMergedCells).append("\n");
    sb.append("  IgnoreHidden: ").append(IgnoreHidden).append("\n");
    sb.append("  OnlyAuto: ").append(OnlyAuto).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

