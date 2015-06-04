package com.aspose.cells.model;

import java.util.*;
public class MultipleFilters {
  private String MatchBlank = null;
  private List<DateTimeGroupItem> MultipleFilterList = new ArrayList<DateTimeGroupItem>();
  /**
	 * getMatchBlank
	 * Gets String
	 * @return MatchBlank
	 */
  public String getMatchBlank() {
    return MatchBlank;
  }

	/**
	 * setMatchBlank
	 * Sets String
	 * @param MatchBlank String
	 */
  public void setMatchBlank(String MatchBlank) {
    this.MatchBlank = MatchBlank;
  }

  /**
	 * getMultipleFilterList
	 * Gets List<DateTimeGroupItem>
	 * @return MultipleFilterList
	 */
  public List<DateTimeGroupItem> getMultipleFilterList() {
    return MultipleFilterList;
  }

	/**
	 * setMultipleFilterList
	 * Sets List<DateTimeGroupItem>
	 * @param MultipleFilterList List<DateTimeGroupItem>
	 */
  public void setMultipleFilterList(List<DateTimeGroupItem> MultipleFilterList) {
    this.MultipleFilterList = MultipleFilterList;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class MultipleFilters {\n");
    sb.append("  MatchBlank: ").append(MatchBlank).append("\n");
    sb.append("  MultipleFilterList: ").append(MultipleFilterList).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

