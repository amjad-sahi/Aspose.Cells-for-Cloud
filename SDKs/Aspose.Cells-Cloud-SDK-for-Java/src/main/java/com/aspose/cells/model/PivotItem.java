package com.aspose.cells.model;

public class PivotItem {
  private Integer Index = null;
  private Boolean IsHidden = null;
  private String Name = null;
  private Object Value = null;
  /**
	 * getIndex
	 * Gets Integer
	 * @return Index
	 */
  public Integer getIndex() {
    return Index;
  }

	/**
	 * setIndex
	 * Sets Integer
	 * @param Index Integer
	 */
  public void setIndex(Integer Index) {
    this.Index = Index;
  }

  /**
	 * getIsHidden
	 * Gets Boolean
	 * @return IsHidden
	 */
  public Boolean getIsHidden() {
    return IsHidden;
  }

	/**
	 * setIsHidden
	 * Sets Boolean
	 * @param IsHidden Boolean
	 */
  public void setIsHidden(Boolean IsHidden) {
    this.IsHidden = IsHidden;
  }

  /**
	 * getName
	 * Gets String
	 * @return Name
	 */
  public String getName() {
    return Name;
  }

	/**
	 * setName
	 * Sets String
	 * @param Name String
	 */
  public void setName(String Name) {
    this.Name = Name;
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
    sb.append("class PivotItem {\n");
    sb.append("  Index: ").append(Index).append("\n");
    sb.append("  IsHidden: ").append(IsHidden).append("\n");
    sb.append("  Name: ").append(Name).append("\n");
    sb.append("  Value: ").append(Value).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

