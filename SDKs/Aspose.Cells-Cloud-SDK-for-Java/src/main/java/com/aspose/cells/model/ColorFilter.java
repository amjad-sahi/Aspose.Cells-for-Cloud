package com.aspose.cells.model;

public class ColorFilter {
  private String FilterByFillColor = null;
  /**
	 * getFilterByFillColor
	 * Gets String
	 * @return FilterByFillColor
	 */
  public String getFilterByFillColor() {
    return FilterByFillColor;
  }

	/**
	 * setFilterByFillColor
	 * Sets String
	 * @param FilterByFillColor String
	 */
  public void setFilterByFillColor(String FilterByFillColor) {
    this.FilterByFillColor = FilterByFillColor;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ColorFilter {\n");
    sb.append("  FilterByFillColor: ").append(FilterByFillColor).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

