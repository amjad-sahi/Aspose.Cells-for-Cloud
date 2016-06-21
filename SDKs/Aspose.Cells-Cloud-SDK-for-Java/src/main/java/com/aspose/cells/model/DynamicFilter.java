package com.aspose.cells.model;

public class DynamicFilter {
  private String DynamicFilterType = null;
  private Object MaxValue = null;
  private Object Value = null;
  /**
	 * getDynamicFilterType
	 * Gets String
	 * @return DynamicFilterType
	 */
  public String getDynamicFilterType() {
    return DynamicFilterType;
  }

	/**
	 * setDynamicFilterType
	 * Sets String
	 * @param DynamicFilterType String
	 */
  public void setDynamicFilterType(String DynamicFilterType) {
    this.DynamicFilterType = DynamicFilterType;
  }

  /**
	 * getMaxValue
	 * Gets Object
	 * @return MaxValue
	 */
  public Object getMaxValue() {
    return MaxValue;
  }

	/**
	 * setMaxValue
	 * Sets Object
	 * @param MaxValue Object
	 */
  public void setMaxValue(Object MaxValue) {
    this.MaxValue = MaxValue;
  }

  /**
	 * getValue
	 * Gets Object
	 * @return Value
	 */
  public Object getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets Object
	 * @param Value Object
	 */
  public void setValue(Object Value) {
    this.Value = Value;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DynamicFilter {\n");
    sb.append("  DynamicFilterType: ").append(DynamicFilterType).append("\n");
    sb.append("  MaxValue: ").append(MaxValue).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

