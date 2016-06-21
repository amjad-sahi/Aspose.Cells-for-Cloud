package com.aspose.cells.model;

public class SortKey {
  private Integer Key = null;
  private String SortOrder = null;
  /**
	 * getKey
	 * Gets Integer
	 * @return Key
	 */
  public Integer getKey() {
    return Key;
  }

	/**
	 * setKey
	 * Sets Integer
	 * @param Key Integer
	 */
  public void setKey(Integer Key) {
    this.Key = Key;
  }

  /**
	 * getSortOrder
	 * Gets String
	 * @return SortOrder
	 */
  public String getSortOrder() {
    return SortOrder;
  }

	/**
	 * setSortOrder
	 * Sets String
	 * @param SortOrder String
	 */
  public void setSortOrder(String SortOrder) {
    this.SortOrder = SortOrder;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SortKey {\n");
    sb.append("  Key: ").append(Key).append("\n");
    sb.append("  SortOrder: ").append(SortOrder).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

