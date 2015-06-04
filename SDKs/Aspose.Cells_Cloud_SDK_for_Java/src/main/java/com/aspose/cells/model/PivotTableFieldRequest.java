package com.aspose.cells.model;

import java.util.*;
public class PivotTableFieldRequest {
  private List<Integer> Data = new ArrayList<Integer>();
  /**
	 * getData
	 * Gets List<Integer>
	 * @return Data
	 */
  public List<Integer> getData() {
    return Data;
  }

	/**
	 * setData
	 * Sets List<Integer>
	 * @param Data List<Integer>
	 */
  public void setData(List<Integer> Data) {
    this.Data = Data;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PivotTableFieldRequest {\n");
    sb.append("  Data: ").append(Data).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

