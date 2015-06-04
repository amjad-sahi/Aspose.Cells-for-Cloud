package com.aspose.cells.model;

public class CustomFilter {
  private Object Criteria = null;
  private String FilterOperatorType = null;
  /**
	 * getCriteria
	 * Gets Object
	 * @return Criteria
	 */
  public Object getCriteria() {
    return Criteria;
  }

	/**
	 * setCriteria
	 * Sets Object
	 * @param Criteria Object
	 */
  public void setCriteria(Object Criteria) {
    this.Criteria = Criteria;
  }

  /**
	 * getFilterOperatorType
	 * Gets String
	 * @return FilterOperatorType
	 */
  public String getFilterOperatorType() {
    return FilterOperatorType;
  }

	/**
	 * setFilterOperatorType
	 * Sets String
	 * @param FilterOperatorType String
	 */
  public void setFilterOperatorType(String FilterOperatorType) {
    this.FilterOperatorType = FilterOperatorType;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CustomFilter {\n");
    sb.append("  Criteria: ").append(Criteria).append("\n");
    sb.append("  FilterOperatorType: ").append(FilterOperatorType).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

