package com.aspose.cells.model;

import com.aspose.cells.model.ValueType;
public class SingleValue {
  private ValueType ValueType = null;
  private String Value = null;
  /**
	 * getValueType
	 * Gets ValueType
	 * @return ValueType
	 */
  public ValueType getValueType() {
    return ValueType;
  }

	/**
	 * setValueType
	 * Sets ValueType
	 * @param ValueType ValueType
	 */
  public void setValueType(ValueType ValueType) {
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

