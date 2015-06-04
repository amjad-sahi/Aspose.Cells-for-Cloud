package com.aspose.cells.model;

import com.aspose.cells.model.ValueType;
public class SingleValue {
  private Integer ValueType = null;
  private String Value = null;
  /**
	 * getValueType
	 * Gets ValueType
	 * @return ValueType as Integer
	 */
  public Integer getValueType() {
    return ValueType;
  }

	/**
	 * setValueType
	 * Sets ValueType
	 * @param Integer ValueType
	 */
  public void setValueType(Integer ValueType) {
    this.ValueType = ValueType;
  }

  /**
	 * getValue
	 * Gets String
	 * @return Value
	 */
  public String getValue() {
    return Value;
  }

	/**
	 * setValue
	 * Sets String
	 * @param Value String
	 */
  public void setValue(String Value) {
    this.Value = Value;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SingleValue {\n");
    sb.append("  ValueType: ").append(ValueType).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

