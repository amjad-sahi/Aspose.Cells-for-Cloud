package com.aspose.cells.model;

public class IconFilter {
  private Integer IconId = null;
  private String IconSetType = null;
  /**
	 * getIconId
	 * Gets Integer
	 * @return IconId
	 */
  public Integer getIconId() {
    return IconId;
  }

	/**
	 * setIconId
	 * Sets Integer
	 * @param IconId Integer
	 */
  public void setIconId(Integer IconId) {
    this.IconId = IconId;
  }

  /**
	 * getIconSetType
	 * Gets String
	 * @return IconSetType
	 */
  public String getIconSetType() {
    return IconSetType;
  }

	/**
	 * setIconSetType
	 * Sets String
	 * @param IconSetType String
	 */
  public void setIconSetType(String IconSetType) {
    this.IconSetType = IconSetType;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class IconFilter {\n");
    sb.append("  IconId: ").append(IconId).append("\n");
    sb.append("  IconSetType: ").append(IconSetType).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

