package com.aspose.cells.model;

public class Top10Filter {
  private String Criteria = null;
  private String IsPercent = null;
  private String IsTop = null;
  private Integer Items = null;
  /**
	 * getCriteria
	 * Gets String
	 * @return Criteria
	 */
  public String getCriteria() {
    return Criteria;
  }

	/**
	 * setCriteria
	 * Sets String
	 * @param Criteria String
	 */
  public void setCriteria(String Criteria) {
    this.Criteria = Criteria;
  }

  /**
	 * getIsPercent
	 * Gets String
	 * @return IsPercent
	 */
  public String getIsPercent() {
    return IsPercent;
  }

	/**
	 * setIsPercent
	 * Sets String
	 * @param IsPercent String
	 */
  public void setIsPercent(String IsPercent) {
    this.IsPercent = IsPercent;
  }

  /**
	 * getIsTop
	 * Gets String
	 * @return IsTop
	 */
  public String getIsTop() {
    return IsTop;
  }

	/**
	 * setIsTop
	 * Sets String
	 * @param IsTop String
	 */
  public void setIsTop(String IsTop) {
    this.IsTop = IsTop;
  }

  /**
	 * getItems
	 * Gets Integer
	 * @return Items
	 */
  public Integer getItems() {
    return Items;
  }

	/**
	 * setItems
	 * Sets Integer
	 * @param Items Integer
	 */
  public void setItems(Integer Items) {
    this.Items = Items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Top10Filter {\n");
    sb.append("  Criteria: ").append(Criteria).append("\n");
    sb.append("  IsPercent: ").append(IsPercent).append("\n");
    sb.append("  IsTop: ").append(IsTop).append("\n");
    sb.append("  Items: ").append(Items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

